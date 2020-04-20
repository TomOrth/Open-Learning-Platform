# Open-Learning-Platform
An open platform for educators to disperse knowledge.  Please visit the wiki for more info!

## Installing
NOTE: Installation instructions based off of Ethan Ziegler's [README](https://github.com/TCNJSwEngg/SE-Rails-starter)

### Install Ruby on Rails & PostgreSQL for your machine:
Ruby (2.7.0) & Rails (6.0.2.1): 
https://gorails.com/setup/

### Install this repository: 

`git clone https://github.com/TomOrth/Open-Learning-Platform`

Once cloned, cd into the repository, then `cd src` and then run the following commands to install dependcies

`bundle install`
`yarn install`

If you encounter errors, try restarting PostgreSQL and installing additional updates.

For CentOS:
```sh
$ systemctl restart postgresql-9.6
$ sudo yum install postgresql96-libs
$ sudo yum install postgresql96-devel
```
For MacOS:
```sh
$ pg_ctl -D /usr/local/var/postgres start
   ```
Please run the following. `sudo yum install postgresql-libs postgresql-devel`

### Create the databases and perform migration:
```
    rake db:create
    rake db:migrate:reset
    rake db:migrate
    rake db:seed
```
### Running the application

Ensure that you are in the `src` directory of the repository, and then run this command: `rails s --binding=x.x.x.x`, where x.x.x.x is the IP address of your machine. If you are on a linux machine (such as the TCNJ VMs), you can run `ip addr show eth0` and your IP address will be the numbers, seperated by dots after `inet`. Do not include the `/<number>` on the end of the IP address.

To view the server, go to your browser and type in `localhost:3000` if the server is running on your machine.  If the server is running on a remote VM or machine, type in the browser `<ip or url for machine>:3000` and replace <ip or url for machine> with the either the ip address or the url/name of the machine. For example, for my project on my VM, you would type in your browser `csc415-server34.hpc.tcnj.edu:3000`

NOTE: If you get an error about the host you are using, you will need to add this line to `config/environments/development.rb`:

`config.hosts << <host name>` where <host name> is the name of your server/host for the rails application

### Necessary environment variables
You will need an account for the Sendgrid API to send emails within the application and set these two environment variables

* SENDGRID_USERNAME - The username for your sendgrid api account
* SENDGRID_PASSWORD - The password for your sendgrid api account

For development purposes, you may want to use [Figaro](https://github.com/laserlemon/figaro) for the enviornment variables. Otherwise, you can set them as normally would.
If running of my VM for SWE, these variables are already setup properly for testing and demo purposes
