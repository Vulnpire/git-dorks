#!/bin/bash

usage() {
    echo "Usage: $0 [-d <domain> | -f <file>]"
    echo "Options:"
    echo "  -d <domain>: Specify a single domain."
    echo "  -f <file>: Specify a file containing multiple domains (one per line)."
    echo "Example: $0 -d example.tld"
    echo "         $0 -f domains.txt"
    exit 1
}

while getopts ":d:f:" opt; do
    case ${opt} in
        d)
            domain=$OPTARG
            ;;
        f)
            file=$OPTARG
            ;;
        \?)
            echo "Invalid option: -$OPTARG" 1>&2
            usage
            ;;
        :)
            echo "Option -$OPTARG requires an argument." 1>&2
            usage
            ;;
    esac
done
shift $((OPTIND -1))

if [[ -n "$domain" && -n "$file" ]]; then
    echo "Error: Specify either a single domain (-d) or a file containing multiple domains (-f), not both." 1>&2
    usage
fi

if [[ -z "$domain" && -z "$file" ]]; then
    echo "Error: Domain or file not specified." 1>&2
    usage
fi

process_domain() {
    local domain=$1
    echo ""
    echo "************ Github Dork Links for $domain *******************"
    echo ""
    
	echo "password"
	echo "https://github.com/search?q=$domain+password&type=Code"

	echo "npmrc _auth"
	echo "https://github.com/search?q=$domain+npmrc%20_auth&type=Code"

	echo "dockercfg"
	echo "https://github.com/search?q=$domain+dockercfg&type=Code"

	echo "pem private"
	echo "https://github.com/search?q=$domain+pem%20private&type=Code"

	echo "id_rsa"
	echo "https://github.com/search?q=$domain+id_rsa&type=Code"

	echo "aws_access_key_id"
	echo "https://github.com/search?q=$domain+aws_access_key_id&type=Code"

	echo "s3cfg"
	echo "https://github.com/search?q=$domain+s3cfg&type=Code"

	echo "htpasswd"
	echo "https://github.com/search?q=$domain+htpasswd&type=Code"

	echo "git-credentials"
	echo "https://github.com/search?q=$domain+git-credentials&type=Code"

	echo "bashrc password"
	echo "https://github.com/search?q=$domain+bashrc%20password&type=Code"

	echo "sshd_config"
	echo "https://github.com/search?q=$domain+sshd_config&type=Code"

	echo "xoxp OR xoxb OR xoxa"
	echo "https://github.com/search?q=$domain+xoxp%20OR%20xoxb%20OR%20xoxa&type=Code"

	echo "SECRET_KEY"
	echo "https://github.com/search?q=$domain+SECRET_KEY&type=Code"

	echo "client_secret"
	echo "https://github.com/search?q=$domain+client_secret&type=Code"

	echo "sshd_config"
	echo "https://github.com/search?q=$domain+sshd_config&type=Code"

	echo "github_token"
	echo "https://github.com/search?q=$domain+github_token&type=Code"

	echo "api_key"
	echo "https://github.com/search?q=$domain+api_key&type=Code"

	echo "FTP"
	echo "https://github.com/search?q=$domain+FTP&type=Code"

	echo "app_secret"
	echo "https://github.com/search?q=$domain+app_secret&type=Code"

	echo "passwd"
	echo "https://github.com/search?q=$domain+passwd&type=Code"

	echo "s3.yml"
	echo "https://github.com/search?q=$domain+.env&type=Code"

	echo ".exs"
	echo "https://github.com/search?q=$domain+.exs&type=Code"

	echo "beanstalkd.yml"
	echo "https://github.com/search?q=$domain+beanstalkd.yml&type=Code"

	echo "deploy.rake"
	echo "https://github.com/search?q=$domain+deploy.rake&type=Code"

	echo "mysql"
	echo "https://github.com/search?q=$domain+mysql&type=Code"

	echo "credentials"
	echo "https://github.com/search?q=$domain+credentials&type=Code"

	echo "PWD"
	echo "https://github.com/search?q=$domain+PWD&type=Code"

	echo "deploy.rake"
	echo "https://github.com/search?q=$domain+deploy.rake&type=Code"

	echo ".bash_history"
	echo "https://github.com/search?q=$domain+.bash_history&type=Code"

	echo ".sls"
	echo "https://github.com/search?q=$domain+.sls&type=Code"

	echo "secrets"
	echo "https://github.com/search?q=$domain+secrets&type=Code"

	echo "composer.json"
	echo "https://github.com/search?q=$domain+composer.json&type=Code"

	#
    echo ""
}

if [ -n "$domain" ]; then
    process_domain "$domain"
fi

if [ -n "$file" ]; then
    while IFS= read -r line; do
        process_domain "$line"
    done < "$file"
fi
