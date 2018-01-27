DHALL=$(wildcard src/*.dhall)
YAML=$(addprefix bin/,$(notdir $(DHALL:.dhall=.yaml)))

.PHONY: all clean deploy

all: $(YAML)
clean:
	rm -f $(YAML)

deploy: all
	kubectl apply -f bin

bin/%.yaml: src/%.dhall
	dhall-to-yaml < $< > $@

