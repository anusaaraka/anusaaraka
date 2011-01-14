
;Added by Meena(23.7.10)
;That bit at the beginning of the film was brilliant . 
(defrule bit0
(declare (salience 5000))
(id-root ?id bit)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA_aMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bit.clp  bit0  "  ?id "  CotA_anSa)" crlf))
)


(defrule bit00
(declare (salience 5000))
(id-root ?id bit)
?mng <-(meaning_to_be_decided ?id)
(or(idiom_type_1  =(- ?id 1) ?id)(viSeRya-det_viSeRaNa  ?id  =(- ?id 1)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WoDA_sA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bit.clp  bit00  "  ?id "  WoDA_sA)" crlf))
)









;Salience reduced by Meena(23.7.10)
;Added by Veena (10-03-10)
;She tried to do a bit of exercise every day .
;usane prawyeka xina WodA #sA vyAyAma #kA karane ke liye prayAsa kiyA
(defrule bit1
(declare (salience 0))
;(declare (salience 6400))
(id-root ?id bit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bit.clp  bit1   "  ?id "  WodA)" crlf))
)



;Added by Veena (8-04-10)
;His career bit the dust when he lost the job . 
;usake #kEriyara ne #XUla #chAti usane kAma #jaba KoyA
(defrule bit2
(declare (salience 5000))
(id-root ?id bite)
(id-word ?id bit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?obj)
(id-word ?obj dust)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id chAti))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bit.clp  bit2   "  ?id "  chAti)" crlf))
)

