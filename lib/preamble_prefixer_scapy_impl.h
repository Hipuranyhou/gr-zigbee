/* -*- c++ -*- */
/*
 * Copyright 2021 gefa.
 *
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifndef INCLUDED_ZIGBE_PREAMBLE_PREFIXER_SCAPY_IMPL_H
#define INCLUDED_ZIGBE_PREAMBLE_PREFIXER_SCAPY_IMPL_H

#include <zigbe/preamble_prefixer_scapy.h>

namespace gr {
  namespace zigbe {

    class preamble_prefixer_scapy_impl : public preamble_prefixer_scapy
    {
     private:
        //large enought
        char buf[256];

     public:
      preamble_prefixer_scapy_impl();
      ~preamble_prefixer_scapy_impl();

    void make_frame(pmt::pmt_t msg);
      // // Where all the action really happens
      // void forecast (int noutput_items, gr_vector_int &ninput_items_required);

      // int general_work(int noutput_items,
      //      gr_vector_int &ninput_items,
      //      gr_vector_const_void_star &input_items,
      //      gr_vector_void_star &output_items);

    };

  } // namespace zigbe
} // namespace gr

#endif /* INCLUDED_ZIGBE_PREAMBLE_PREFIXER_SCAPY_IMPL_H */

