#!/usr/bin/env python3
"""
make_control.py -- NEGATIVE CONTROL input for verify_residual.py.

Reshapes the shipped/reproduced 225 (classP, classQ, graph) triples -- every
one of which the pipeline says DIES at the final avoiding-pair filter -- into
the residual-record shape, so that verify_residual.py can be pointed at them.
A checker with teeth must report 225 failures here.  A checker that reports
0 failures on the 412 AND 0 failures on these 225 would be vacuous.
"""
import json
b = json.load(open("baseline_with_a7.json"))
out = [{"class_P": c["class_P"], "class_Q": c["class_Q"],
        "P_neighbourhood_bitmasks": c["graph"]["P_neighbourhood_bitmasks"]}
       for c in b["cases"]]
json.dump({"residual_survivors": out}, open("control_input.json", "w"))
print(f"wrote control_input.json: {len(out)} control triples")
