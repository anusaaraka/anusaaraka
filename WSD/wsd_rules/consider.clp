
(defrule consider0
(declare (salience 5000))
(id-root ?id consider)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id considering )
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XyAna_meM_raKa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  consider.clp  	consider0   "  ?id "  XyAna_meM_raKa_kara )" crlf))
)

(defrule consider1
(declare (salience 4900))
(id-root ?id consider)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) as )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consider.clp 	consider1   "  ?id "  samaJa )" crlf))
)

;It was considered as one of the youngest.
(defrule consider2
(declare (salience 4800))
(id-root ?id consider)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consider.clp 	consider2   "  ?id "  samaJa )" crlf))
)

;It was considered to be one of the youngest.
;"considering","Prep","1.XyAna_meM_raKa_kara"
;She has done very well in exams considering her illness.
;
(defrule consider3
(declare (salience 4700))
(id-root ?id consider)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 plan)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consider.clp 	consider3   "  ?id "  samaJa )" crlf))
)

(defrule consider4
(declare (salience 4600))
(id-root ?id consider)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 good)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consider.clp 	consider4   "  ?id "  samaJa )" crlf))
)

(defrule consider5
(declare (salience 4500))
(id-root ?id consider)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consider.clp 	consider5   "  ?id "  vicAra_kara )" crlf))
)

;default_sense && category=verb	vicAra_kara	0
;"consider","VT","1.vicAra_karanA"
;They considered the possibility of a strike.
;Your application is being considered.
;His name is being considred for this post.
;He stood considering the lake.
;
;
;LEVEL 
;Headword : consider
;
;Examples --
;
;1. We have considered your application carefully but cannot offer you a job.
;hama Apake prArWanA pawra ko sAvaXAnI se vicAra kara {XyAna xe} cuke hEM, kinwu hama Apako kAma nahIM xe sakawe hEM. 
;2. Have you considered how to get there ?
;kyA Apane XyAna xiyA ki vahAz kEse jAezge ?
;3. We must consider the feelings of others.
;hameM xUsaro kI BAvanAo ko XyAna xenA cAhie.
;4. You must consider his youth.
;Apako usake yOvana ko XyAnameM raKanA cAhie.
;5. I consider you foolish.
;mEM wumheM mUrKa samaJawA hUz.
;
;uparaliKiwa vAkyoM meM, 1 - 4 vAkyoM meM, "consider" Sabxa kA arWa "XyAna_xenA" yA "XyAna raKanA" EsA A rahA hE. XyAna xene para usapara vicAra BI kiyA jAwA hE.
;wo "consider" Sabxa kA arWa hama "XyAna_xenA[vicArapUrvaka]" Ese xe sakawe hEM.
;kinwu vAkya 5 meM "consider" kA arWa "samaJanA" EsA A rahA hE.
;wo aba hama "consider" Sabxa ke lie sUwra kuCa isa prakAra xe sakawe hEM :
;
;sUwra : "XyAna_xenA{vicArapUrvaka}^samaJanA"
; 
