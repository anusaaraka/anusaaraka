
(defrule aside0
(declare (salience 5000))
(id-root ?id aside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aside.clp 	aside0   "  ?id "  raxxa_karanA )" crlf))
)

;"aside","Adv","1.raxxa_karanA"
;You must put aside any idea of holiday this year .
;--"2.alaga_raKanA"
;My father has kept aside some money for his retirement.
;
(defrule aside1
(declare (salience 4900))
(id-root ?id aside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svagawa_ukwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aside.clp 	aside1   "  ?id "  svagawa_ukwi )" crlf))
)

;"aside","N","1.svagawa_ukwi"
;One could understand Hamlet's mind by his asides.
;
;LEVEL 
;Headword : aside
;
;
;Examples --
;"aside","Adv","1.kinAre"
;You must put aside any idea of holiday this year .
;isa varRa CuttI para jAne kA koI BI KayAla kinAre raKa xo.<--eka_ora 
;--"2.alaga_raKanA"
;My father has kept aside some money for his retirement.
;mere piwA ne apane ritAyarameMta ke bAxa ke liye kuCa pEsA alaga raKa xiyA hE. <--eka_ora alaga se
;
;"aside","N","1.svagawa_ukwi"
;One could understand Hamlet's mind by his asides.
;hEmaleta ke ximAga meM kyA cala rahA hE yaha usakI svagawa_ukwiyoM se samaJa sakawe hEM.
;<--eka ora jA kara
;
;sUwra : eka_ora^svagawokwi
;
