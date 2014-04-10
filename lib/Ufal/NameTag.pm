# This file was automatically generated by SWIG (http://www.swig.org).
# Version 2.0.11
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Ufal::NameTag;
our $VERSION = '1.0.0.1';
use base qw(Exporter);
use base qw(DynaLoader);
package Ufal::NameTagc;
our $VERSION = '1.0.0.1';
bootstrap Ufal::NameTag;
package Ufal::NameTag;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Ufal::NameTag;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package Ufal::NameTag;


############# Class : Ufal::NameTag::Forms ##############

package Ufal::NameTag::Forms;
our $VERSION = '1.0.0.1';
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Ufal::NameTag );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = Ufal::NameTagc::new_Forms(@_);
    bless $self, $pkg if defined($self);
}

*size = *Ufal::NameTagc::Forms_size;
*empty = *Ufal::NameTagc::Forms_empty;
*clear = *Ufal::NameTagc::Forms_clear;
*push = *Ufal::NameTagc::Forms_push;
*pop = *Ufal::NameTagc::Forms_pop;
*get = *Ufal::NameTagc::Forms_get;
*set = *Ufal::NameTagc::Forms_set;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Ufal::NameTagc::delete_Forms($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Ufal::NameTag::TokenRange ##############

package Ufal::NameTag::TokenRange;
our $VERSION = '1.0.0.1';
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Ufal::NameTag );
%OWNER = ();
%ITERATORS = ();
*swig_start_get = *Ufal::NameTagc::TokenRange_start_get;
*swig_start_set = *Ufal::NameTagc::TokenRange_start_set;
*swig_length_get = *Ufal::NameTagc::TokenRange_length_get;
*swig_length_set = *Ufal::NameTagc::TokenRange_length_set;
sub new {
    my $pkg = shift;
    my $self = Ufal::NameTagc::new_TokenRange(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Ufal::NameTagc::delete_TokenRange($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Ufal::NameTag::TokenRanges ##############

package Ufal::NameTag::TokenRanges;
our $VERSION = '1.0.0.1';
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Ufal::NameTag );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = Ufal::NameTagc::new_TokenRanges(@_);
    bless $self, $pkg if defined($self);
}

*size = *Ufal::NameTagc::TokenRanges_size;
*empty = *Ufal::NameTagc::TokenRanges_empty;
*clear = *Ufal::NameTagc::TokenRanges_clear;
*push = *Ufal::NameTagc::TokenRanges_push;
*pop = *Ufal::NameTagc::TokenRanges_pop;
*get = *Ufal::NameTagc::TokenRanges_get;
*set = *Ufal::NameTagc::TokenRanges_set;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Ufal::NameTagc::delete_TokenRanges($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Ufal::NameTag::NamedEntity ##############

package Ufal::NameTag::NamedEntity;
our $VERSION = '1.0.0.1';
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Ufal::NameTag );
%OWNER = ();
%ITERATORS = ();
*swig_start_get = *Ufal::NameTagc::NamedEntity_start_get;
*swig_start_set = *Ufal::NameTagc::NamedEntity_start_set;
*swig_length_get = *Ufal::NameTagc::NamedEntity_length_get;
*swig_length_set = *Ufal::NameTagc::NamedEntity_length_set;
*swig_type_get = *Ufal::NameTagc::NamedEntity_type_get;
*swig_type_set = *Ufal::NameTagc::NamedEntity_type_set;
sub new {
    my $pkg = shift;
    my $self = Ufal::NameTagc::new_NamedEntity(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Ufal::NameTagc::delete_NamedEntity($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Ufal::NameTag::NamedEntities ##############

package Ufal::NameTag::NamedEntities;
our $VERSION = '1.0.0.1';
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Ufal::NameTag );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = Ufal::NameTagc::new_NamedEntities(@_);
    bless $self, $pkg if defined($self);
}

*size = *Ufal::NameTagc::NamedEntities_size;
*empty = *Ufal::NameTagc::NamedEntities_empty;
*clear = *Ufal::NameTagc::NamedEntities_clear;
*push = *Ufal::NameTagc::NamedEntities_push;
*pop = *Ufal::NameTagc::NamedEntities_pop;
*get = *Ufal::NameTagc::NamedEntities_get;
*set = *Ufal::NameTagc::NamedEntities_set;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Ufal::NameTagc::delete_NamedEntities($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Ufal::NameTag::Version ##############

package Ufal::NameTag::Version;
our $VERSION = '1.0.0.1';
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Ufal::NameTag );
%OWNER = ();
%ITERATORS = ();
*swig_major_get = *Ufal::NameTagc::Version_major_get;
*swig_major_set = *Ufal::NameTagc::Version_major_set;
*swig_minor_get = *Ufal::NameTagc::Version_minor_get;
*swig_minor_set = *Ufal::NameTagc::Version_minor_set;
*swig_patch_get = *Ufal::NameTagc::Version_patch_get;
*swig_patch_set = *Ufal::NameTagc::Version_patch_set;
*current = *Ufal::NameTagc::Version_current;
sub new {
    my $pkg = shift;
    my $self = Ufal::NameTagc::new_Version(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Ufal::NameTagc::delete_Version($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Ufal::NameTag::Tokenizer ##############

package Ufal::NameTag::Tokenizer;
our $VERSION = '1.0.0.1';
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Ufal::NameTag );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Ufal::NameTagc::delete_Tokenizer($self);
        delete $OWNER{$self};
    }
}

*setText = *Ufal::NameTagc::Tokenizer_setText;
*nextSentence = *Ufal::NameTagc::Tokenizer_nextSentence;
*newVerticalTokenizer = *Ufal::NameTagc::Tokenizer_newVerticalTokenizer;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Ufal::NameTag::Ner ##############

package Ufal::NameTag::Ner;
our $VERSION = '1.0.0.1';
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Ufal::NameTag );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Ufal::NameTagc::delete_Ner($self);
        delete $OWNER{$self};
    }
}

*load = *Ufal::NameTagc::Ner_load;
*recognize = *Ufal::NameTagc::Ner_recognize;
*newTokenizer = *Ufal::NameTagc::Ner_newTokenizer;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package Ufal::NameTag;


@EXPORT_OK = qw(*Forms:: *TokenRange:: *TokenRanges:: *NamedEntity::
                *NamedEntities:: *Version:: *Tokenizer:: *Ner::);
%EXPORT_TAGS = (all => [@EXPORT_OK]);
1;