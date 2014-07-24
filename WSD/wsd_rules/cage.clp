;@@@ Added by Preeti(26-11-13)
;The dogs are caged up at night.
;kuwwoM ko rAwa meM pinjare_me_banxa kIyA jAwA hEM.
(defrule cage3
(declare (salience 600))
(id-root ?id cage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pinjare_me_banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* " cage.clp     cage3   " ?id " "?id1"  pinjare_me_banxa_kara)" crlf))
)
;#############################Defaults rule#######################################
;$$$ Modified by Preeti(26-11-13)
;sent by Anand Kishoreji(Delhi)
;Example:-Animals are kept in a cage.
;paSu pinjare meM raKe jAwe hEM.
(defrule cage1
(declare (salience 400))
(id-root ?id cage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pinjarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " cage.clp     cage1   " ?id " pinjarA)" crlf))
)

;$$$ Modified by Preeti(26-11-13)
;sent by Anand Kishoreji(Delhi)
;Example:-You will see caged animals in a zoological garden.[adjective]
;Apa eka cidiyAGara meM piMjare meM raKe gaye paSuoM ko xeKeMge.
(defrule cage2
(declare (salience 500))
(id-root ?id cage)
;(sAmAnya_vAkya)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id  verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pinjare_me_banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " cage.clp     cage2  " ?id "
pinjare_me_banxa_kara)" crlf))
)

;#############################Removed rules#######################################
;He paced the room like a caged animal.
;Added by Meena(22.10.10)
;pinjare_meM_banxa
;(id-root ?id cage)
;(sAmAnya_vAkya)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id caged)
;(viSeRya-viSeRaNa ?id1 ?id)

;################### Additional Examples ####################
;I don't like seeing animals in cages.
