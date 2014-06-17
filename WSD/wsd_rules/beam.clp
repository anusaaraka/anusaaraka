;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24/03/2014
;A beam of satisfaction.[oald]
;संतोष की मुस्कुराहट
(defrule beam5
(declare (salience 5000))
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 satisfaction)
(viSeRya-of_saMbanXI ?id ?id1) 
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muskurAhAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam5   "  ?id "  muskurAhAta )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24/03/2014
;Your calculation is way off beam.[oald]
;आपका हिसाब बहुत गलत है
(defrule beam6
(declare (salience 5000))
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id ?id1)
(id-word ?id1 off)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_galawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam6   "  ?id "  bahuwa_galawa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24/03/2014
;Live pictures of the ceremony were beamed around the world.[oald]
;समारोह के चिञों का दुनिया भर में सीधा प्रसारण किया जा रहा था 
(defrule beam7
(declare (salience 5000))
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(kriyA-around_saMbanXI  ?id ?id1)
(id-word ?id1 world)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasAraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam7   "  ?id "  prasAraNa_kara )" crlf))
)

;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24/03/2014
;changed the positions of 'id' and 'id1' in condition '(viSeRya-of_saMbanXI ?id ?id1)'
;A single beam of light radiated from the lighthouse.
;रोशनीघर से निकलने वाली  प्रकाश की एक किरण पुंज .
(defrule beam0
(declare (salience 5000))
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 sunlight|light)
(viSeRya-of_saMbanXI ?id ?id1) ;Replaced viSeRya-of_viSeRaNa as viSeRya-of_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiraNa_puMja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam0   "  ?id "  kiraNa_puMja )" crlf))
)

(defrule beam1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id daNdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam1   "  ?id "  daNdA )" crlf))
)

;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24/03/2014
(defrule beam2
(declare (salience 4800))
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 he|she)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muskurA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam2   "  ?id "  muskurA )" crlf))
)
;note: removed rule 'beam3' as it was similar to 'beam2' and added '(id-word ?id1 she)' from 'beam3' to 'beam2'


(defrule beam4
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id beam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASa_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beam.clp 	beam4   "  ?id "  prakASa_dAla )" crlf))
)

;"beam","V","1.prakASa_dAlanA"
;The sunrise beamed on the whole countryside.
;--"2.muskurAnA"
;She was beaming with joy.
;
;
