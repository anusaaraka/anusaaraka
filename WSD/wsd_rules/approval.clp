;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;@@@ Addded by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)[07-03-14]
;Government also gave' in-principle' approval for setting up of a greenfield airport at Karaikal in Puducherry and Shirdi in Maharashtra.[ncert]
;सरकार ने महाराष्ट्रा में शिरडी में और पुदुचेर्री में करैयकल में एक हरित क्षेट्र विमानपत्तन स्थापित करने के लिए 'in-principle' मञ्जूरी  भी दी .
(defrule approval1
(declare (salience 4000))
(id-root ?id approval)
?mng <-(meaning_to_be_decided ?id) 
(viSeRya-for_saMbanXI  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMjUrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approval.clp 	approval1   "  ?id "  maMjUrI )" crlf)
)
)

;*******************DEFAULT RULES****************************

;@@@ Addded by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)[07-03-14]
;He showed his approval by smiling broadly.[cambridge]
;उसने मुस्कुराकर उसका अनुमोदन/समर्थन दिखाया 
(defrule approval0
(declare (salience 0))
(id-root ?id approval)
?mng <-(meaning_to_be_decided ?id) 
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumoxana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approval.clp 	approval0   "  ?id "  anumoxana )" crlf)
)
)
