;##############################################################################
;#  Copyright (C) 2002-2005 Rashmi Ranjan (rashmi.ranjan810@gmail.com)
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
;##############################################################################

;She was wearing a vivid pink shirt.	[cambridge advance learner dictionary]
;उसने एक चटकीली गुलाबी शर्ट पहनी थी |
;The vivid colours and patterns of her designs.	[oxford advance learner dictionary]
;उसकी डिजाइन के चटकीली रंग और आकृतियाँ|
;The fabric was dyed a vivid red.	[merriam-webster]
;कपड़े को चटकीले लाल रंग में रंगा गया था |
(defrule vivid0
(declare (salience 4900))
(id-root ?id vivid)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 pink|yellow|green|red|orange|blue|colour|cloth|plumage|shade|brown|violet)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id catakIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vivid.clp 	vivid0   "  ?id "  catakIlA)" crlf))
)

;He gave a vivid description of his life as a fighter pilot.	[oxford advance learner dictionary]
;उसने एक लड़ाकू पायलट के रूप में अपने जीवन का एक जीवंत अनुभव बताया |
;The book includes many vivid illustrations.	[merriam-webster]
;इस किताब में कई जीवंत उदाहरण शामिल हैं |
;He gave a very vivid and often shocking description of his time in prison.	[cambridge advance learner dictionary]
;उसने जेल में काटे अपने समय का बहुत जीवंत और कभी-कभी चौंकाने वाला वर्णन किया |
;He gave a vivid description of the scene.	[merriam-webster]
;उसने घटना स्थल का बड़ा ही जीवंत वर्णन किया |
(defrule vivid1
(declare (salience 4900))
(id-root ?id vivid)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id1 ?id)(kriyA-object  ?id2 ?id1))
(id-root ?id1 description|illustration)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIvaMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vivid.clp 	vivid1   "  ?id "  jIvaMwa)" crlf))
)

;She looked at me with those vivid blue eyes of hers.	[iitb]
;उसने अपनी गहरी नीली आखों से मुझे देखा |
(defrule vivid2
(declare (salience 5000))
(id-root ?id vivid)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 eye)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vivid.clp 	vivid2   "  ?id "  gaharA)" crlf))
)

;Her cheeks flushed a vivid red.	[coca corpus]
;उसका चेहरा शर्म से लाल हो गया |
(defrule vivid3
(declare (salience 5000))
(id-root ?id vivid)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id2 ?id1)
(kriyA-object  ?id2 ?id3)
(viSeRya-viSeRaNa  ?id3 ?id)
(id-root ?id1 cheek)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vivid.clp 	vivid3   "  ?id "  -)" crlf))
)

;################################# DEFAULT RULE ################################################
;She could remember the dream in vivid detail.	[merriam-webster]
;उसे अपना सपना स्पष्ट रूप से याद  है | 
(defrule vivid4
(declare (salience 4500))
(id-root ?id vivid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vivid.clp 	vivid4   "  ?id "  spaRta)" crlf))
)
