// This file is part of MorphoDiTa.
//
// Copyright 2013 by Institute of Formal and Applied Linguistics, Faculty of
// Mathematics and Physics, Charles University in Prague, Czech Republic.
//
// MorphoDiTa is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as
// published by the Free Software Foundation, either version 3 of
// the License, or (at your option) any later version.
//
// MorphoDiTa is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with MorphoDiTa.  If not, see <http://www.gnu.org/licenses/>.

#pragma once

#include <stdexcept>

#include "../common.h"

namespace ufal {
namespace morphodita {

// Declarations
class binary_decoder_error : public runtime_error {
 public:
  explicit binary_decoder_error(const char* description) : runtime_error(description) {}
};

class binary_decoder {
 public:
  inline unsigned char* fill(unsigned len);

  inline unsigned next_1B() throw (binary_decoder_error);
  inline unsigned next_2B() throw (binary_decoder_error);
  inline unsigned next_4B() throw (binary_decoder_error);
  template <class T> inline const T* next(unsigned elements) throw (binary_decoder_error);

  inline bool is_end();
  inline unsigned tell();
  inline void seek(unsigned pos) throw (binary_decoder_error);

 private:
  vector<unsigned char> buffer;
  const unsigned char* data;
  const unsigned char* data_end;
};


// Definitions
unsigned char* binary_decoder::fill(unsigned len) {
  buffer.resize(len);
  data = buffer.data();
  data_end = buffer.data() + len;

  return buffer.data();
}

unsigned binary_decoder::next_1B() throw (binary_decoder_error) {
  if (data + 1 > data_end) throw binary_decoder_error("No more data in binary_decoder");
  return *data++;
}

unsigned binary_decoder::next_2B() throw (binary_decoder_error) {
  if (data + sizeof(uint16_t) > data_end) throw binary_decoder_error("No more data in binary_decoder");
  unsigned result = *(uint16_t*)data;
  data += sizeof(uint16_t);
  return result;
}

unsigned binary_decoder::next_4B() throw (binary_decoder_error) {
  if (data + sizeof(uint32_t) > data_end) throw binary_decoder_error("No more data in binary_decoder");
  unsigned result = *(uint32_t*)data;
  data += sizeof(uint32_t);
  return result;
}

template <class T> const T* binary_decoder::next(unsigned elements) throw (binary_decoder_error) {
  if (data + sizeof(T) * elements > data_end) throw binary_decoder_error("No more data in binary_decoder");
  const T* result = (const T*) data;
  data += sizeof(T) * elements;
  return result;
}

bool binary_decoder::is_end() {
  return data >= data_end;
}

unsigned binary_decoder::tell() {
  return data - buffer.data();
}

void binary_decoder::seek(unsigned pos) throw (binary_decoder_error) {
  if (pos > buffer.size()) throw binary_decoder_error("Cannot seek past end of binary_decoder");
  data = buffer.data() + pos;
}

} // namespace morphodita
} // namespace ufal
