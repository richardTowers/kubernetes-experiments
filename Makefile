DHALL=$(wildcard src/*.dhall)
YAML=$(addprefix bin/,$(notdir $(DHALL:.dhall=.yaml)))
IS_GKE := "False"

.PHONY: all clean deploy

all: $(YAML)
clean:
	rm -f $(YAML)

deploy: all
	kubectl apply -f bin

bin/%.yaml: src/%.dhall
	IS_GKE=$(IS_GKE) dhall-to-yaml <<< './$<' > $@

