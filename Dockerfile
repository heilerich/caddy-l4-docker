FROM caddy:2.6.1-builder AS builder

RUN xcaddy build \
    --with github.com/abiosoft/caddy-yaml@64fbdd07cf02bf7cdb227bae3017ca7251f25c18 \
    --with github.com/mholt/caddy-l4@52954e5eed8a5ba1a0a405ef96f66a546d543a01

FROM caddy:2.6.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy