h1. Hubba Show Manager

Tested under passenger, nginx, ruby 1.9.2, and mongoDB 2.0.7-rc0

This project is largely based on rails3-mongoid-devise for authentication.

h1. Installation procedure:


1. Start up Mongo locally on standard ports
2. Adjust config/environments as needed for your environemnt
3. In the app's root dir, do a 'bundle install' to install all the gems. 
4. Start the app under either ruby script/rails server, nginx+passenger, or apache+passenger.

Configuring a webserver to work with Rails is beyond the scope of this
documentation. You should consult the appropriate sites and Phusion
Passenger documentation.

h1. Creating Admins

To make someone an admin:

{code}
u = User.where(email: "jna@retina.net")[0]
u.admin = true
u.save!
{code}

Obviously, you'll need one of these.


h1. Public Domain Dedication

This work is a compilation and derivation from other previously
released works. With the exception of various included works, which
may be restricted by other licenses, the author or authors of this
code dedicate any and all copyright interest in this code to the
public domain. We make this dedication for the benefit of the public
at large and to the detriment of our heirs and successors. We intend
this dedication to be an overt act of relinquishment in perpetuity of
all present and future rights to this code under copyright law.

h1. Open Source

Devise and OmniAuth are the primary authentication mechnanisms in this
code, starting with the base package:
http://github.com/railsapps/rails3-mongoid-devise

This software makes extensive use of DataTables for JQuery and the
plugins TableTools, Row reordering, and others.
http://www.datatables.net/download/

Released under the APACHE Open Source License.
