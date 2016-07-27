;Added by Meena(18.02.10)   %%
;The native speakers of English do not produce a variable mishmash of words of the sort in 4 . 
(defrule english0
(declare (salience 5000))
(id-root ?id English|english)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id1  ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMgrejZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  english.clp    english0   "  ?id " aMgrejZI )" crlf))
)
