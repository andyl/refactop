defmodule Rfx.Changereq.Filesys do
  
  @moduledoc """
  Changereq.Filesys struct and support functions.

  Filesys elements.

  Changereq.Filesys struc has three elements:
  - *cmd* - the filesys command
  - *src_path* - source path
  - *tgt_path* - target path (only for move commands...)

  Cmd can be one of:
  - :file_create
  - :file_move
  - :file_delete
  - :dir_create
  - :dir_move
  - :dir_delete

  Changereq.Filesys must have:
  - either *edit_path* or *edit_source*
  - *diff*
  """
  
  @enforce_keys [:cmd, :src_path]

  defstruct [:cmd, :src_path, :tgt_path ]

  alias Rfx.Changereq.Filesys

  # ----- Construction -----
  
  def new(cmd: :file_create, src_path: source) do
    valid_struct = %Filesys{cmd: :file_create, src_path: source}
    {:ok, valid_struct}
  end

  def new(cmd: :file_move, src_path: source, tgt_path: target) do
    valid_struct = %Filesys{cmd: :file_move, src_path: source, tgt_path: target}
    {:ok, valid_struct}
  end

  def new(cmd: :file_delete, src_path: source) do
    valid_struct = %Filesys{cmd: :file_delete, src_path: source}
    {:ok, valid_struct}
  end

  def new(cmd: :dir_create, src_path: source) do
    valid_struct = %Filesys{cmd: :dir_create, src_path: source}
    {:ok, valid_struct}
  end

  def new(cmd: :dir_move, src_path: source, tgt_path: target) do
    valid_struct = %Filesys{cmd: :dir_move, src_path: source, tgt_path: target}
    {:ok, valid_struct}
  end

  def new(cmd: :dir_delete, src_path: source) do
    valid_struct = %Filesys{cmd: :dir_delete, src_path: source}
    {:ok, valid_struct}
  end

  # ----- Conversion -----

  # ----- Application -----

  def apply! do
  end

end