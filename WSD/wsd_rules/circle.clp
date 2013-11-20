
(defrule circle0
(declare (salience 5000))
(id-root ?id circle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqwwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  circle.clp 	circle0   "  ?id "  vqwwa )" crlf))
)

(defrule circle1
(declare (salience 4900))
(id-root ?id circle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakkara_lagA)); Modified cakKara_lagA to cakkara_lagA by Roja. Suggested by Chaitanya Sir (20-11-13)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  circle.clp 	circle1   "  ?id "  cakkara_lagA )" crlf))
)

;default_sense && category=verb	cakkara_mAra	0
;"circle","V","1.cakkara_mAranA"
;The aircraft circled the airport before landing.
;--"2.GeranA"
;The security forces circled the enemy camp.
;
;LEVEL 
;
;
;Headword : circle
;
;Examples --
;
;"circle","N"
;--1.GerA
;School children were standing in a circle.
;skUla ke bacce eka Gere meM KadZe We.
;
;--2.maMdalI
;I worked for seven years in that circle.
;mEneM usa maMdalI meM sAwa sAla kAma kiyA WA.
;Your friends circle is very large.
;wumhArI miwra maMdalI bahuwa badZI hEM.
;
;--3.vqwa 
;Use your compasses to draw a circle.
;vqwa AkAra KIcaneM ke lie apane kampAsa kA iswemAla karo.
;
;
;"circle","V"
;
;--1.cakkara lagAnA
;I circled her home twice, but I didn't meet her.
;mEneM xo bAra usake Gara ke cakkara lagAye Pira BI usase mila nahI pAyI.
;
;--2.parikramA karanA
;The moon circles the earth every 28 days.
;aTAisa xina caMxramA XarawI kI parikramA karawA rahawA hEM.
;
;--3.GeranA
;Himalayas are circled by hills.
;himAlaya parvawoM se Gire hue hE. 
;
;yahAz para "circle"Sabxa ke kaI arWa nikala rahe hE,paranwu ina saba me eka bAwa
;sAmAne AwI hEki yahAz eka Ese Sabxa kA prayoga ho sakawA hE, jo sabameM samAna
;hEM.yahAz isa Sabxa kelie AkAra kA arWa sAmane AwA hEM.isalie yahAz sUwra banegA
;
;sUwra : vqwwa`
;
;
;
