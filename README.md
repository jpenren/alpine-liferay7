# alpine-liferay7
Alpine + OpenJDK 8 + Liferay 7

(Not still ready for production)

Usage:

```
docker run -d -p 8080:8080 jpenren/alpine-liferay7
```

Roadmap:
- Externalize database, currently H2
- Share configuration with host (portal-ext.properties)
- Store data (document_library, elasticsearh) on a data volume container


Note: Liferay requires at least 1024MB of RAM
