;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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

;@@@ Added by Pramila(Banasthali University) on 27-01-2014
;There are several witnesses who will testify for the defence.      [problem sentence]
;कई गवाह हैं जो प्रतिपक्ष के लिये गवाही देंगी .
(defrule defence0
(declare (salience 5000))
(id-root ?id defence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-for_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawipakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defence.clp 	defence0   "  ?id "  prawipakRa )" crlf))
)

;---------------------deafult rules-------------------------------

;@@@ Added by Pramila(Banasthali University) on 27-01-2014
;The war has ended but government spending on defence is still increasing.        ;cald
;युद्ध समाप्त हो गया है लेकिन सुरक्षा पर सरकारी खर्च अब भी बढ़ रहा है.
(defrule defence1
(declare (salience 4000))
(id-root ?id defence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defence.clp 	defence1   "  ?id "  rakRA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 27-01-2014
(defrule defence2
(declare (salience 0))
(id-root ?id defence)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defence.clp 	defence2   "  ?id "  rakRA )" crlf))
)
