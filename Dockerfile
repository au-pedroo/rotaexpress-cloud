FROM nginx:alpine

LABEL maintainer="RotaExpress DevOps Team"
LABEL description="One-Page RotaExpress - Case 4 LAB11"
LABEL version="1.0"

# Remove a página padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia a one-page para dentro da imagem
COPY index.html /usr/share/nginx/html/index.html

# Copia configuração customizada do nginx (opcional mas bom ter)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expõe a porta 80
EXPOSE 80

# nginx já tem o CMD padrão, mas deixar explícito é boa prática
CMD ["nginx", "-g", "daemon off;"]