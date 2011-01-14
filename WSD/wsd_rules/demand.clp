
(defrule demand0
(declare (salience 5000))
(id-root ?id demand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mAzgoM_se_BarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  demand.clp  	demand0   "  ?id "  mAzgoM_se_BarA )" crlf))
)

;"demanding","Adj","1.mAzgoM_se_BarA"
;The job of a medical practitioner is highly demanding.
;
(defrule demand1
(declare (salience 4900))
(id-root ?id demand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAzga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  demand.clp 	demand1   "  ?id "  mAzga )" crlf))
)

;default_sense && category=verb	mAzga{aXIkAra_se}	0
;"demand","VT","1.mAzganA{aXIkAra_se}"
;Women must demand for their participation in the society.
;OrawoM ko samAja meM apanI BAgIxArI mAzganI hI cAhie.
;--"2.mAzganA
;Bringing up a child demands a lot of patience.
;
;LEVEL 
;Headword : demand
;
;Examples --
;
;"demand","N","1.mAzga"
;Every demand of a child should not be fulfilled.
;bAlaka kI hara mAzga pUrI nahIM karanI cAhie.
;
;The demand for software engineers has increased.
;sOYPtaveyara iMjIniyaroM kI mAzga baDZa gayI hE.
;
;The number of trained professionals has far exceeded the market demand
;praSikRiwa vyAvasAyikoM kI saMKyA bAjZAra kI mAzga se kahIM aXika ho gayI hE.
;
;
;sUwra : mAzga
