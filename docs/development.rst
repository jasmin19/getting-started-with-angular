Development
===========


Installing Dependencies
-----------------------

Install the needed packages with `npm`::

    $ npm install

.. note:: This will install the declared dependencies of the package.json file
          into the node_modules folder.

Install the needed libraries with `bower`::

    $ bower install

.. note:: This will install the declared dependencies of the bower.json file
          into the www/lib folder. This is specified in the `.bowerrc` file.


Getting Started
---------------

Start developing using `grunt`::

    $ grunt

This will watch the resources in the `src` folder and copy it to the right
place in the `www` folder.

A local livereload webserver is also started at `http://localhost:8000`.

Open a browser and navigate to this address.


.. vim: set ft=rst ts=4 sw=4 expandtab tw=78 :
