# <a name="title"></a> chef-vagrant_extras

## <a name="description"></a> Description

Extra fixes and shims for running your recipes in a [Vagrant][vagrant_site] VM.

## <a name="usage"></a> Usage

## <a name="requirements"></a> Requirements

### <a name="requirements-chef"></a> Chef

Tested on 0.10.4 and 0.10.8 but newer and older version should work just
fine. File an [issue][issues] if this isn't the case.

### <a name="requirements-platform"></a> Platform

The following platforms have been tested with this cookbook, meaning that
the recipes and LWRPs run on these platforms without error:

* ubuntu (10.04/10.10/11.04/11.10)
* debian (6.0)
* opensuse

Please [report][issues] any additional platforms so they can be added.

### <a name="requirements-cookbooks"></a> Cookbooks

There are **no** external cookbook dependencies. However, if you
want to use the vagrant user in `/etc/sudoers.d` then you will need to include
the [COOK-350 branch][sudo_350] of the [**sudo**][sudo_cb] cookbook (until it
is merged in).

## <a name="installation"></a> Installation

Depending on the situation and use case there are several ways to install
this cookbook. All the methods listed below assume a tagged version release
is the target, but omit the tags to get the head of development. A valid
Chef repository structure like the [Opscode repo][chef_repo] is also assumed.

## <a name="installation-platform"></a> From the Opscode Community Platform

To install this cookbook from the Opscode platform, use the *knife* command:

    knife cookbook site install vagrant_extras

### <a name="installation-librarian"></a> Using Librarian

[Librarian][librarian] is a Bundler for your Chef cookbooks.
Include a reference to the cookbook in a [Cheffile][cheffile] and run
`librarian-chef install`. To install Librarian:

    gem install librarian
    cd chef-repo
    librarian-chef init

To use the Opscode platform version:

    echo "cookbook 'vagrant_extras'" >> Cheffile
    librarian-chef install

Or to reference the Git version:

    cat >> Cheffile <<END_OF_CHEFFILE
    cookbook 'vagrant_extras',
      :git => 'https://github.com/fnichol/chef-vagrant_extras', :ref => 'v0.2.0'
    END_OF_CHEFFILE
    librarian-chef install

### <a name="installation-kgc"></a> Using knife-github-cookbooks

The [knife-github-cookbooks][kgc] gem is a plugin for *knife* that supports
installing cookbooks directly from a GitHub repository. To install with the
plugin:

    gem install knife-github-cookbooks
    cd chef-repo
    knife cookbook github install fnichol/chef-vagrant_extras/v0.2.0

### <a name="installation-tarball"></a> As a Tarball

If the cookbook needs to downloaded temporarily just to be uploaded to a Chef
Server or Opscode Hosted Chef, then a tarball installation might fit the bill:

    cd chef-repo/cookbooks
    curl -Ls https://github.com/fnichol/chef-vagrant_extras/tarball/v0.2.0 | tar xfz - && \
      mv fnichol-chef-vagrant_extras-* vagrant_extras

### <a name="installation-gitsubmodule"></a> As a Git Submodule

A dated practice (which is discouraged) is to add cookbooks as Git
submodules. This is accomplished like so:

    cd chef-repo
    git submodule add git://github.com/fnichol/chef-vagrant_extras.git cookbooks/vagrant_extras
    git submodule init && git submodule update

**Note:** the head of development will be linked here, not a tagged release.

## <a name="recipes"></a> Recipes

### <a name="recipes-default"></a> default

Coming soon...

## <a name="attributes"></a> Attributes

There are **no** attributes defined in this cookbook.

## <a name="lwrps"></a> Resources and Providers

There are **no** resources and providers in this cookbook.

## <a name="development"></a> Development

* Source hosted at [GitHub][repo]
* Report issues/Questions/Feature requests on [GitHub Issues][issues]

Pull requests are very welcome! Make sure your patches are well tested.
Ideally create a topic branch for every separate change you make.

## <a name="license"></a> License and Author

Author:: Fletcher Nichol (<fnichol@nichol.ca>)

Copyright 2010, 2011, 2012, Fletcher Nichol

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[chef_repo]:        https://github.com/opscode/chef-repo
[cheffile]:         https://github.com/applicationsonline/librarian/blob/master/lib/librarian/chef/templates/Cheffile
[kgc]:              https://github.com/websterclay/knife-github-cookbooks#readme
[librarian]:        https://github.com/applicationsonline/librarian#readme
[lwrp]:             http://wiki.opscode.com/display/chef/Lightweight+Resources+and+Providers+%28LWRP%29
[sudo_350]:         https://github.com/bryanwb/cookbooks/commit/4d157277e485b6e9f0da8f588c41013addf43e11
[sudo_cb]:          http://community.opscode.com/cookbooks/sudo
[vagrant_site]:     http://vagrantup.com

[repo]:         https://github.com/fnichol/chef-vagrant_extras
[issues]:       https://github.com/fnichol/chef-vagrant_extras/issues
