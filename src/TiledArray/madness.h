/*
 * This file is a part of TiledArray.
 * Copyright (C) 2013  Virginia Tech
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#ifndef TILEDARRAY_MADNESS_H__INCLUDED
#define TILEDARRAY_MADNESS_H__INCLUDED

// This needs to be defined before world/worldreduce.h and world/worlddc.h
#ifndef WORLD_INSTANTIATE_STATIC_TEMPLATES
#define WORLD_INSTANTIATE_STATIC_TEMPLATES
#endif // WORLD_INSTANTIATE_STATIC_TEMPLATES

#pragma GCC diagnostic push
#pragma GCC system_header
#include <madness/world/MADworld.h>
#include <madness/tensor/cblas.h>
#pragma GCC diagnostic pop

// Import some MADNESS classes into TiledArray for convenience.
namespace TiledArray {
  using madness::World;
  using madness::Future;
  using madness::initialize;
  using madness::finalize;
} // namespace TiledArray

#endif // TILEDARRAY_MADNESS_H__INCLUDED
