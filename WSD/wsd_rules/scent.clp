;@@@ Added by jagriti(8.3.2014)
;He scented danger and flew away.[rajpal]
;उसने विपत्ति भांप ली और भाग गया.  
(defrule scent2
(declare (salience 5000))
(id-root ?id scent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 mischief|danger)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAMpa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scent.clp 	scent2   "  ?id "  BAMpa_le)" crlf))
)
;@@@ Added by jagriti(8.3.2014)
;Rose water has scented the room.[rajpal] 
;गुलाब जल ने कमरा सुगन्धित कर दिया है . 
(defrule scent3
(declare (salience 4900))
(id-root ?id scent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 cloth|room|air)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suganXiwa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scent.clp 	scent3   "  ?id "  suganXiwa_kara_xe)" crlf))
)
;@@@ Added by jagriti(8.3.2014)
;He bought expensive scent.[rajpal]
;उसने महँगा इत्र खरीदा . 
(defrule scent4
(declare (salience 4800))
(id-root ?id scent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa ?id ?id1)(viSeRya-of_saMbanXI  ?id1 ?id))
(id-root ?id1 expensive|bottle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scent.clp 	scent4   "  ?id "  iwra )" crlf))
)
;@@@ Added by jagriti(8.3.2014)
;A scent of danger/fear/trouble/vitory.[wordnet] 
;विपत्ति का अनुभव . 
(defrule scent5
(declare (salience 4700))
(id-root ?id scent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 danger|fear|trouble|vitory)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuBava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scent.clp 	scent5   "  ?id " anuBava )" crlf))
)
;@@@ Added by jagriti(8.3.2014)
;A pleasant scent.[rajpal]
;एक मनोहर सुगन्ध . 
(defrule scent6
(declare (salience 4600))
(id-root ?id scent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
(id-root ?id1 pleasant|fresh|sweet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suganXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scent.clp 	scent6   "  ?id " suganXa)" crlf))
)

;...Default Rule...
(defrule scent0
(declare (salience 100))
(id-root ?id scent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ganXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scent.clp 	scent0   "  ?id "  ganXa )" crlf))
)

;"scent","N","1.ganXa"
;That flower has a good scent.
;--"2.awara"
;Put some scent on before going out.
;--"3.Koja"
;Scientists are on the scent of a cure.
;
(defrule scent1
(declare (salience 100))
(id-root ?id scent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUzGa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scent.clp 	scent1   "  ?id "  sUzGa )" crlf))
)

;"scent","V","1.sUzGanA"
;The cat scented the fish.
;--"2.BAzpanA"
;The detective scented the victim on the spot.
;--"3.suganXiwa_karanA"
;She gave me a bunch of beautiful roses that scented the air.
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_scent6
(declare (salience 4600))
(id-root ?id scent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 pleasant|fresh|sweet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suganXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " scent.clp   sub_samA_scent6   "   ?id " suganXa)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_scent6
(declare (salience 4600))
(id-root ?id scent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 pleasant|fresh|sweet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suganXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " scent.clp   obj_samA_scent6   "   ?id " suganXa)" crlf))
)
