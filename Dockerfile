FROM caddy:2.6.2-builder AS builder

RUN xcaddy build \
    --with github.com/abiosoft/caddy-yaml@64fbdd07cf02bf7cdb227bae3017ca7251f25c18 \
    --with github.com/mholt/caddy-l4@121f2ada24819cbb71e2aab1f6ab89e99d85fcf6

FROM caddy:2.6.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy