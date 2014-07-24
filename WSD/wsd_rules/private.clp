
(defrule private0
(declare (salience 5000))
(id-root ?id private)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nijI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  private.clp 	private0   "  ?id "  nijI )" crlf))
)

(defrule private1
(declare (salience 4900))
(id-root ?id private)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwigawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  private.clp 	private1   "  ?id "  vyakwigawa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 23-1-2014
;The Education Department of Eastern Bengal and Assam had proposed that the Calcutta University 
;should withdraw recognition from these schools, which were under private management, and the Chief 
;Secretary wrote to the Registrar of of the Calcutta University accordingly. [Gyannidhi]
;पूर्वी बंगाल और असम के शिक्षा विभाग ने यह प्रस्तावित किया था कि कलकत्ता विश्वविद्यालय इन दो स्कूलों की, जो निजी स्तर की प्रबंध समितियों द्वारा संचालित थे, 
;मान्यता समाप्त कर दे और मुख्य सचिव ने कलकत्ता विश्वविद्यालय के रजिस्ट्रार को इस आशय का एक पत्र लिखा।
(defrule private3
(declare (salience 5500))
(id-root ?id private)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 management|school|college|company|industry|bathroom|property|docter|hospital|income|lesson|class|club|jet|plane|bus|car|collection|life|meeting|dealing|deal)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nijI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  private.clp 	private3   "  ?id "  nijI )" crlf))
)



;@@@ aaded by Sonam Gupta MTech IT Banasthali 23-1-2014
;I need to talk to you in private. [Cambridge]
;मुझे एकान्त में आपसे बातचीत करने की जरूरत है . 
(defrule private4
(declare (salience 5500))
(id-root ?id private)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(kriyA-in_saMbanXI  ? ?id)(viSeRya-viSeRaka  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  private.clp 	private4   "  ?id "  ekAnwa )" crlf))
)



;@@@ aaded by Sonam Gupta MTech IT Banasthali 23-1-2014
;If I can afford it, I think I'll go private. [OALD]
;यदि मेरे सामर्थय में हुआ तो मैं निजी अस्पताल में जाऊँगा . 
(defrule private5
(declare (salience 5400))
(id-root ?id private)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 go)
(subject-subject_samAnAXikaraNa  ?pr ?id)
(kriyA-subject  ?id1 ?pr)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nijI_aspawAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  private.clp 	private5   "  ?id "  nijI_aspawAla )" crlf))
)



;@@@ aaded by Sonam Gupta MTech IT Banasthali 23-1-2014
;He's a very private person. [OALD]
; वह एक अन्तर्मुखी व्यक्ति है .
(defrule private6
(declare (salience 5600))
(id-root ?id private)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 person|man|one|character|personality)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwarmuKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  private.clp 	private6   "  ?id "  anwarmuKI )" crlf))
)

;"private","Adj","1.vyakwigawa"
;A private letter was sent to the publisher for demanding the money.
;--"2.sAXAraNa"
;He revealed private chat with his boss, to others.
;--"3.gopanIya"
;Don't be a private citizen of the country, achieve something.
;--"4.gZEra sarakArI"
;Private Industries are given a boon in the present cental budget.
;
;LEVEL 
;Headword  : private
;
;Examples --
;"private","Adj","1.vyakwigawa"
;Those people tried to encroach upon private land.
;una logoM ne vyakwigawa jZamIna para anaXikAra praveSa karane kI koSiSa kI.
;--"2.gopanIya<--vyakwigawa
;He revealed even private matters to the authorities.
;usane gopanIya bAweM BI aXikAriyoM ko bawA xI.
;--3. gEra_sarakArI"<--nijI_uxyama <--vyakwigawa
;He has got a job in a private company
;use gEra-sarakArI kampanI meM nOkarI milI hE
;
;"private","N",sAXAraNa"<--vyakwigawa
;He is recruited as a private soldier
;use sAXAraNa sEnika ke rUpa meM BarwI kiyA gayA
;
;commentary : adj.[ME.Pryvat<L.privatus,belonging to oneself <privare,
;to separate,deprive <privus,separate ]
;
;vyAKyA : uparyukwa aMkiwa Sabxa `private' ke Binna laganevAle saBI arWoM kA 
;mUlArWa eka hI nikalawA hE, jo hE `vyakwigawa'. 
;isakA sUwra hama isa prakAra xe sakawe hEM.
;      
;
;anwarnihiwa_sUwra ;
;                       vyakwigawa   
;                          |
;                      |------|
;                   gopanIya    gEra_sarakArI
;
;
;sUwra : vyakwigawa[>gEra_sarakArI]
