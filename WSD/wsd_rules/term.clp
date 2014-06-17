
;Added by Meena(19.11.10)
;In physics , the term fluid is used to mean either a gas or a liquid . 
(defrule term0
(declare (salience 5000))
(id-root ?id term)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id1 ?id)(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sabxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  term.clp      term0   "  ?id "  Sabxa) )" crlf))
)



;Salience reduced by Meena(19.11.10)
(defrule term1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id term)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  term.clp 	term1   "  ?id "  avaXi )" crlf))
)

;"term","N","1.avaXi[Sarwa]"
;--"2.avaXi"
;The teacher completed the portions in the first term.
;--"3.paxa[gaNiwa_meM]"
;The general term of an algebraic equation of the n-th degree.
;--"4.niSciwa_kAla"
;A healthy baby born at full term.
;
(defrule term2
(declare (salience 4900))
(id-root ?id term)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  term.clp 	term2   "  ?id "  kahalA )" crlf))
)


;@@@ Added by Prachi Rathore[18-1-14]
; It's nearly the end of term. [oald]
;यह  करीब-करीब  सत्र का अन्त है .
(defrule term3
(declare (salience 5000))
(id-root ?id term)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-root ?id1 end)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  term.clp      term3   "  ?id "  sawra) )" crlf))
)

;@@@ Added by Prachi Rathore[18-1-14]
;According to the terms of the contract the tenants have to pay the maintenance charges. [sentence from this file]
;kAntrEkta kI SarwoM ke anusAra kirAyexAroM ko raKaraKAva ke pEse xene hoMge.
(defrule term4
(declare (salience 5000))
(id-root ?id term)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 contract)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sarwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  term.clp      term4   "  ?id "  Sarwa) )" crlf))
)



;"term","V","1.kahalAnA"
;He has often been termed a perfectionist.
;
;LEVEL 
;
;
;
;"term"
;
;aMgrejZI Sabxa 'term' ko le kara kiyA gayA eka prayAsa:-
;
;   Term (?), n. [F. terme, L. termen, -inis, terminus, a boundary limit,
;   end; akin to Gr. Thrum a tuft, && cf. Terminus, Determine,
;   Exterminate.] 1. That which limits the extent of anything; limit;
;   extremity; bound; boundary.
;   1913 Webster]
;
;
;It is a technical term.
;yaha eka pAriBARika Sabxa hE.  <-- niSciwa(pariBARiwa)_Sabxa
;He is going back at the end of the term.
;vaha tarma ke anwa meM vApasa jA rahA hE.  <-- niSciwa(pariBARiwa)_samaya_avaXi
;Judge gave him a three year term.
;jaja ne use wIna sAla kI sajZA xI.  <-- niSciwa_samayAvaXi
;According to the terms of the contract the tenants have to pay the
;maintenance charges. 
;kAntrEkta kI SarwoM ke anusAra kirAyexAroM ko raKaraKAva ke pEse xene hoMge. 
;<-- niSciwa(pariBARiwa)_Sarwa
;
;sUwra : niSciwa_*_sImA
;
;isa uxAharaNa meM yaxyapi sawahI wOra para 'term' Sabxa ke cAra bilkula alaga alaga arWa
;laga rahe We kinwu etymology xeKane para pawA calA ki saBI meM eka 'niSciwa sImA'
;kA BAva hE. alaga alaga saMxarBa meM usa sImA ke bIca alaga alaga saMjFA AwI hE.
;yahI bAwa isa Sabxa ke sUwra kA AXAra banawA hE.
;
;
;
