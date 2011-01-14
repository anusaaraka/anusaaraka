
(defrule firm0
(declare (salience 5000))
(id-root ?id firm)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) but )
(id-word =(- ?id 2) deep)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  firm.clp 	firm0   "  ?id "  xqDZa )" crlf))
)

(defrule firm1
(declare (salience 4900))
(id-root ?id firm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  firm.clp 	firm1   "  ?id "  xqDZa )" crlf))
)

;"firm","Adj","1.xqDZa"
;By studying with deligence, one can have a firm foundation for future.
;--"2.acala"
;He always remains firm on his decisions.
;--"3.sWira"
;Atlast the Rupee is now firm against the US Dollar.
;
(defrule firm2
(declare (salience 4800))
(id-root ?id firm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWirawA_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  firm.clp 	firm2   "  ?id "  sWirawA_honA )" crlf))
)

;"firm","Adv","1.sWirawA_honA"
;The IT industry has now been firmly established as one of the main foriegn exchange earners for the country.
;
(defrule firm3
(declare (salience 4700))
(id-root ?id firm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyApArika_kaMpanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  firm.clp 	firm3   "  ?id "  vyApArika_kaMpanI )" crlf))
)

;"firm","N","1.vyApArika_kaMpanI"
;There are many firms in this business.
;
(defrule firm4
(declare (salience 4600))
(id-root ?id firm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  firm.clp 	firm4   "  ?id "  xqDZa_kara )" crlf))
)

;"firm","V","1.xqDZa_karanA"
;Please firm up your decision in this matter.
;
;LEVEL 
;Headword : firm 
;
;Examples --
;
;"firm","Adj","1.majZabUwa" <--xqDZa
;Strong rope
;majabUwa rassI
;--"2.acala"<--xqDZa
;He is always firm in his decisions
;vaha apane nirNayoM meM acala rahawA hE
;--"3.sWira"<-- xqDZa 
;Rupee is now firm against the u.s dollar
;amarIkI dAlera ke prawi rupayA sWira hE
;
;"firm","N","kampanI"
;There are many firms in this business
;isa vyApAra meM aneka kampaniyAz hEM
;            
;vyAKyA --
;
;uparyukwa viSeRaNa vAkyoM meM `xqDZa' niRkarRa ina BAvoM se nikalawA hE
;muKyawayA vAkya 3.meM rupayA kA mUlya dAlara se pakkA hE arWAw koI 
;parivarwana nahIM hE. saMjFA arWa meM isakA sarvaWA Binna arWa hE. awaH isakA sUwra hogA -- 
;
;sUwra : xqDZa/kampanI
;
