# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export DATABASE_URL="postgres://vtbkxmxtauruee:3c392bbf2707fbdc6b61ed9ec4f6080e9f97a27455afd6d28e9bdd0302e5fe81@ec2-18-233-32-61.compute-1.amazonaws.com:5432/d7t9143klgkdb3"
export FLASK_APP="application.py"
export FLASK_DEBUG="1"
