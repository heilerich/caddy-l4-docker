FROM caddy:2.6.1-builder AS builder

RUN xcaddy build \
    --with github.com/abiosoft/caddy-yaml@64fbdd07cf02bf7cdb227bae3017ca7251f25c18 \
    --with github.com/mholt/caddy-l4@c0758c2c40b3daba1a8428da97e5e0db82370b9f

FROM caddy:2.6.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy