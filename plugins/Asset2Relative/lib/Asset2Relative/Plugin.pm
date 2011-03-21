package Asset2Relative::Plugin;

use strict;

sub _asset_insert_param {
   my ( $cb, $app, $param, $tmpl ) = @_;
   $param->{ upload_html } =~ s!((src|href)=")https?://.*?/!$1/!g;
}

1;