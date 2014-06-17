;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;It's quite plain that she doesn't want to talk to me about it. [Cambridge]
;यह सचमुच स्पष्ट है कि वह इसके बारे में मुझसे बातचीत करना नहीं चाहती है . 
(defrule plain0
(declare (salience 5000))
(id-root ?id plain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative|adverb|noun)
(or(and(viSeRya-viSeRaka  ?id ?)(subject-subject_samAnAXikaraNa  ? ?id))(and(kriyA-vAkyakarma  ?id ?)(kriyA-subject  ?id ?))(and(viSeRya-viSeRaNa  ?id ?)(viSeRya-RaRTI_viSeRaNa  ?id ?)(kriyA-object  ? ?id))(and(saMjFA-to_kqxanwa  ?id ?)(subject-subject_samAnAXikaraNa  ? ?id))(viSeRya-viSeRaNa  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plain.clp 	plain0   "  ?id "  spaRta )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;That's just plain stupid! [Cambridge]
;वह सिर्फ पूर्णतया मूर्ख है! 
(defrule plain1
(declare (salience 4900))
(id-root ?id plain)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(viSeRya-viSeRaka  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNawayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plain.clp 	plain1   "  ?id "  pUrNawayA )" crlf))
)

(defrule plain2
(declare (salience 4800))
(id-root ?id plain)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAXAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plain.clp 	plain2   "  ?id "  sAXAraNa )" crlf))
)

(defrule plain3
(declare (salience 4700))
(id-root ?id plain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samawala_BUmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plain.clp 	plain3   "  ?id "  samawala_BUmI )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Plain food. [OALD]
;सादा भोजन.
(defrule plain4
(declare (salience 5500))
(id-root ?id plain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(id-root ?id1 food|meal|diet|milk|yoghurt|curd)(id-cat_coarse =(+ ?id 1) adjective))
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plain.clp 	plain4   "  ?id "  sAxA )" crlf))
)


;"plain","N","1.samawala BUmI"
;We have the plains at the out skirts of the town.
;
;
