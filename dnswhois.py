import dns.resolver
import whois

Author: aKa slowkep

domain1 = input('Indicar Target 1: ')  # Pedimos input.

data = whois.whois(domain1)

print("\033[91m[+]\033[00m" "\033[91m Recolectando Información DNS \033[00m" "\033[91m[+]\033[00m" " De: "+ domain1)

for result in dns.resolver.query(domain1, 'A'):  # Sacamos IPV4
    print('IP', result.to_text())

print("\033[91m[+]\033[00m" "\033[91m Recolectando Servidores de Correo \033[00m" "\033[91m[+]\033[00m")

for result in dns.resolver.query(domain1, 'MX'):  # Sacamos Servidores de Correo
    print('MX Records', result.to_text())

print("\033[91m[+]\033[00m" "\033[91m Recolectando Name Servers \033[00m" "\033[91m[+]\033[00m")

for result in dns.resolver.query(domain1, 'NS'):  # Sacamos alias

    print('NS Records:', result.to_text())

print("\033[91m[+]\033[00m" "\033[91m Recolectando WHOIS\033[00m" "\033[91m [+]\033[00m")

#data = input("WHOIS Target 1: ")
#for w in whois.whois(data):
#    print(flush=w)

res = whois.whois(domain1)

print("\033[91m[*]\033[00m" "\033[91m DOMAIN NAME \033[00m" "\033[91m[*]\033[00m")
print(res.domain_name)
print("\033[91m[*]\033[00m" "\033[91m REGISTRAR \033[00m" "\033[91m[*]\033[00m")
print(res.registrar)
print("\033[91m[*]\033[00m" "\033[91m WHOIS_SERVER \033[00m" "\033[91m[*]\033[00m")
print(res.whois_server)
print("\033[91m[*]\033[00m" "\033[91m Referral_url \033[00m" "\033[91m[*]\033[00m")
print(res.referral_url)
print("\033[91m[*]\033[00m" "\033[91m UPDATED_DATE \033[00m" "\033[91m[*]\033[00m")
print(res.updated_date)
print("\033[91m[*]\033[00m" "\033[91m CREATION_DATE \033[00m" "\033[91m[*]\033[00m")
print(res.creation_date)
print("\033[91m[*]\033[00m" "\033[91m EXPIRATION_DATE \033[00m" "\033[91m[*]\033[00m")
print(res.expiration_date)
print("\033[91m[*]\033[00m" "\033[91m NAME_SERVERS \033[00m" "\033[91m[*]\033[00m")
print(res.name_servers)
print("\033[91m[*]\033[00m" "\033[91m STATUS \033[00m" "\033[91m[*]\033[00m")
print(res.status)
print("\033[91m[*]\033[00m" "\033[91m EMAILS \033[00m" "\033[91m[*]\033[00m")
print(res.emails)
print("\033[91m[*]\033[00m" "\033[91m DNS_SEC \033[00m" "\033[91m[*]\033[00m")
print(res.dnssec)
print("\033[91m[*]\033[00m" "\033[91m NAME \033[00m" "\033[91m[*]\033[00m")
print(res.name)
print("\033[91m[*]\033[00m" "\033[91m ORG \033[00m" "\033[91m[*]\033[00m")
print(res.org)
print("\033[91m[*]\033[00m" "\033[91m ADDRESS \033[00m" "\033[91m[*]\033[00m")
print(res.address)
print("\033[91m[*]\033[00m" "\033[91m CITY \033[00m" "\033[91m[*]\033[00m")
print(res.city)
print("\033[91m[*]\033[00m" "\033[91m STATE \033[00m" "\033[91m[*]\033[00m")
print(res.state)
print("\033[91m[*]\033[00m" "\033[91m ZIPCODE \033[00m" "\033[91m[*]\033[00m")
print(res.zipcode)
print("\033[91m[*]\033[00m" "\033[91m COUNTRY \033[00m" "\033[91m[*]\033[00m")
print(res.country)

domain2 = input('Indicar Target 2: ')  # Pedimos input.

datos = whois.whois(domain2)

print("\033[91m[+]\033[00m" "\033[91m Recolectando Información DNS \033[00m" "\033[91m[+]\033[00m" " De: "+ domain2)

for result in dns.resolver.query(domain2, 'A'):  # Sacamos IPV4

    print('IP', result.to_text())

print("\033[91m[+]\033[00m" "\033[91m Recolectando Servidores de Correo \033[00m" "\033[91m [+]\033[00m")

for result in dns.resolver.query(domain2, 'MX'):  # Sacamos Servidores de Correo

    print('MX Records', result.to_text())

print("\033[91m[+]\033[00m" "\033[91m Recolectando Name Servers \033[00m" "\033[91m [+]\033[00m")

for result in dns.resolver.query(domain2, 'NS'):  # Sacamos alias

    print('NS Records:', result.to_text())

print("\033[91m[+]\033[00m" "\033[91m Recolectando WHOIS\033[00m" "\033[91m [+]\033[00m")

#data1 = input("WHOIS Target 1: ")
#for wa in whois.whois(data1):
#   print(wa)

ress = whois.whois(domain2)

print("\033[91m[+]\033[00m" "\033[91m DOMAIN NAME \033[00m" "\033[91m[+]\033[00m")
print(ress.domain_name)
print("\033[91m[+]\033[00m" "\033[91m REGISTRAR \033[00m" "\033[91m[+]\033[00m")
print(ress.registrar)
print("\033[91m[+]\033[00m" "\033[91m WHOIS_SERVER \033[00m" "\033[91m[+]\033[00m")
print(ress.whois_server)
print("\033[91m[+]\033[00m" "\033[91m Referral_url \033[00m" "\033[91m[+]\033[00m")
print(ress.referral_url)
print("\033[91m[+]\033[00m" "\033[91m UPDATED_DATE \033[00m" "\033[91m[+]\033[00m")
print(ress.updated_date)
print("\033[91m[+]\033[00m" "\033[91m CREATION_DATE \033[00m" "\033[91m[+]\033[00m")
print(ress.creation_date)
print("\033[91m[+]\033[00m" "\033[91m EXPIRATION_DATE \033[00m" "\033[91m[+]\033[00m")
print(ress.expiration_date)
print("\033[91m[+]\033[00m" "\033[91m NAME_SERVERS \033[00m" "\033[91m[+]\033[00m")
print(ress.name_servers)
print("\033[91m[+]\033[00m" "\033[91m STATUS \033[00m" "\033[91m[+]\033[00m")
print(ress.status)
print("\033[91m[+]\033[00m" "\033[91m EMAILS \033[00m" "\033[91m[+]\033[00m")
print(ress.emails)
print("\033[91m[+]\033[00m" "\033[91m DNS_SEC \033[00m" "\033[91m[+]\033[00m")
print(ress.dnssec)
print("\033[91m[+]\033[00m" "\033[91m NAME \033[00m" "\033[91m[+]\033[00m")
print(ress.name)
print("\033[91m[+]\033[00m" "\033[91m ORG \033[00m" "\033[91m[+]\033[00m")
print(ress.org)
print("\033[91m[+]\033[00m" "\033[91m ADDRESS \033[00m" "\033[91m[+]\033[00m")
print(ress.address)
print("\033[91m[+]\033[00m" "\033[91m CITY \033[00m" "\033[91m[+]\033[00m")
print(ress.city)
print("\033[91m[+]\033[00m" "\033[91m STATE \033[00m" "\033[91m[+]\033[00m")
print(ress.state)
print("\033[91m[+]\033[00m" "\033[91m ZIPCODE \033[00m" "\033[91m[+]\033[00m")
print(ress.zipcode)
print("\033[91m[+]\033[00m" "\033[91m COUNTRY \033[00m" "\033[91m[+]\033[00m")
print(ress.country)
