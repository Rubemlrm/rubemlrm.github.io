require "jekyll-import";
require "mysql2";
   JekyllImport::Importers::WordPress.run({
      "dbname"   => "oldsite",
      "user"     => "root",
      "password" => "123456",
      "host"     => "localhost",
      "port"     => "3306",
      "socket"   => "",
      "table_prefix"   => "rlrm_",
      "site_prefix"    => "",
      "clean_entities" => true,
      "comments"       => true,
      "categories"     => true,
      "tags"           => true,
      "more_excerpt"   => true,
      "more_anchor"    => true,
      "extension"      => "html",
      "status"         => ["publish"]
    })
