;@@@ Added by jagriti(10.3.2014)
;A screen of creepers keeps out rain.[rajpal]
;लताओं की आड वर्षा को रोकती है . 
(defrule screen2
(declare (salience 5000))
(id-root ?id screen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 tree|branch|wall|house|building|creeper|secrecy|bodyguard)
=>
(retract ?mng)secrecy
(assert (id-wsd_root_mng ?id AdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screen.clp 	screen2   "  ?id "  AdZa )" crlf))
)
;@@@ Added by jagriti(10.3.2014)
;He tried to screen the matter but failed.[rajpal]
;उसने मामले पर परदा डालने का प्रयास किया परन्तु असफल हुआ . 
(defrule screen3
(declare (salience 4900))
(id-root ?id screen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 matter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_paraxA_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screen.clp 	screen3   "  ?id "  para_paraxA_dAla )" crlf))
)
;@@@ Added by jagriti(10.3.2014)
;To screen the gold from view.[rajpal]
;नजर  से सोने को छिपाना . 
(defrule screen4
(declare (salience 4800))
(id-root ?id screen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 gold|money|silver)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screen.clp 	screen4   "  ?id "  CipA )" crlf))
)
;@@@ Added by jagriti(10.3.2014)
;They screened the windows to keep off mosquitoes.[rajpal]
;उन्होंने मच्छर से बचाव के लिए खिडकियों पर जाली लगाईं . 
(defrule screen5
(declare (salience 4700))
(id-root ?id screen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject ?id ?id1)(kriyA-object ?id ?id1))
(id-root ?id1 window|door)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_jAlI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screen.clp 	screen5   "  ?id "  para_jAlI_lagA )" crlf))
)
;@@@ Added by jagriti(10.3.2014)
;The second episode will be screened at the same time tomorrow.[oald]
;दूसरा भाग कल इसी समय पर दिखाया जाएगा . 
(defrule screen6
(declare (salience 4600))
(id-root ?id screen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-on_saMbanXI ?id ?id1)(kriyA-at_saMbanXI ?id ?id1)(kriyA-over_saMbanXI ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAyA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screen.clp 	screen6   "  ?id "  xiKAyA_jA )" crlf))
)
;@@@ Added by jagriti(10.3.2014)
;Do you have screens on your windows?[oald]
;क्या आपकी खिडकियों पर जालियाँ हैं? 
(defrule screen7
(declare (salience 4500))
(id-root ?id screen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-on_saMbanXI ?id ?id1)(viSeRya-of_saMbanXI ?id ?id1))
(id-root ?id1 window|door)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screen.clp 	screen7   "  ?id "  jAlI )" crlf))
)
;@@@ Added by jagriti(10.3.2014)
;To screen women for breast cancer.[wordnet] 
;स्तन कैंसर के लिये महिला क जांँच करना . 
(defrule screen8
(declare (salience 4400))
(id-root ?id screen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAMzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screen.clp 	screen8   "  ?id "  jAMzca_kara )" crlf))
)
;.....Default rule....
(defrule screen0
(declare (salience 100))
(id-root ?id screen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screen.clp 	screen0   "  ?id "  paraxA )" crlf))
)

(defrule screen1
(declare (salience 100))
(id-root ?id screen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AdZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  screen.clp 	screen1   "  ?id "  AdZa_xe )" crlf))
)

;"screen","V","1.AdZa xenA"
;The trees screen the house from view.
;--"2.CipAnA"
;He screened my necklace from every one because it is very costly.
;--"3.jAzcanA"
;Government employees are regularly screened by the security services.
;--"4.praxarSiwa karanA"
;The wild life documentary will be screened tonight on discovery channel.
;
;
