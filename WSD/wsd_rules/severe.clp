;#############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;######################################################################
;@@@ Added by jagriti(10.1.2014)
;His injuries are severe.
;उसकी चोटें कष्टदायक हैं . 
(defrule severe0
(declare (salience 5000))
(id-root ?id severe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
(id-root ?id1 pain|injury)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaRtaxAyaka ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  severe.clp 	severe0   "  ?id "  kaRtaxAyaka )" crlf))
)

;@@@ Added by jagriti(10.1.2014)
;A severe summer.
; घोर ग्रीष्म . 
(defrule severe1
(declare (salience 4900))
(id-root ?id severe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
(id-root ?id1 winter|summer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gora ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  severe.clp 	severe1   "  ?id "  Gora )" crlf))
)

;@@@ Added by jagriti(10.1.2014)
;The house suffered a severe damage .
;घर को एक भारी  नुकसान उठाना पड़ा.
;The party suffered severe losses during the last election.
;पार्टी को पिछले चुनाव के दौरान भारी नुकसान उठाना पड़ा.
(defrule severe2
(declare (salience 4800))
(id-root ?id severe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
(id-root ?id1 damage|shortage|loss)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BArI ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  severe.clp 	severe2   "  ?id "  BArI )" crlf))
)

;@@@ Added by jagriti(10.1.2014)
;She was a severe woman who seldom smiled.
;वह एक गंभीर महिला थी जिसने शायद ही कभी मुस्कुराया.
(defrule severe4
(declare (salience 4600))
(id-root ?id severe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
(id-root ?id1 woman|man|saint)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaMBIra ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  severe.clp 	severe4   "  ?id "  gaMBIra )" crlf))
)

;@@@ Added by jagriti(10.1.2014)
;The marathon is a severe test of stamina.
;मैराथन दमखम की एक कठिन परीक्षा है.
(defrule severe5
(declare (salience 4500))
(id-root ?id severe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
(id-root ?id1 test|paper|exam)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTina ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  severe.clp 	severe5   "  ?id "  kaTina )" crlf))
)

;@@@ Added by jagriti(10.1.2014)
;A severe wind was blowing .
;एक जोरदार हवा चल रही थी.
(defrule severe6
(declare (salience 4400))
(id-root ?id severe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
(id-root ?id1 wind)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joraxAra ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  severe.clp 	severe6   "  ?id "  joraxAra )" crlf))
)
;....Default sense....
;@@@ Added by jagriti(10.1.2014)
;A severe punishment.
;एक कठोर दंड.
(defrule severe7
(declare (salience 100))
(id-root ?id severe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTora ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  severe.clp 	severe7   "  ?id "  kaTora )" crlf))
)
