import { Tiendas } from "../models/tiendas.js";

/* =========================
   CREAR TIENDA
========================= */
export const createTiendas = async (req, res) => {
  try {
    const {
      estado,
      nombre,
      descripcion,
      telefono,
      direccion,
      direccion_anexo,
      direccion_barrio,
      calificacion,
      calificacion_cantidad,
      impuestos,
      dias_trabajados
    } = req.body;

    const tienda = await Tiendas.create({
      estado,
      nombre,
      descripcion,
      telefono,
      direccion,
      direccion_anexo,
      direccion_barrio,
      calificacion,
      calificacion_cantidad,
      impuestos,
      dias_trabajados
    });

    return res.status(201).json(tienda);
  } catch (error) {
    console.log(error);
    res.status(400).json({ message: "Error al crear la tienda" });
  }
};

/* =========================
   OBTENER TODAS LAS TIENDAS
========================= */
export const getTiendas = async (req, res) => {
  try {
    const tiendas = await Tiendas.findAll();
    return res.status(200).json(tiendas);
  } catch (error) {
    console.log(error);
    res.status(400).json({ message: "Error al obtener tiendas" });
  }
};

/* =========================
   OBTENER TIENDA POR ID
========================= */
export const getTiendasById = async (req, res) => {
  try {
    const { id } = req.params;

    const tienda = await Tiendas.findByPk(id);

    if (!tienda) {
      return res.status(404).json({ message: "Tienda no encontrada" });
    }

    return res.status(200).json(tienda);
  } catch (error) {
    console.log(error);
    res.status(400).json({ message: "Error al obtener la tienda" });
  }
};

/* =========================
   ACTUALIZAR TIENDA
========================= */
export const updateTiendas = async (req, res) => {
  try {
    const { id } = req.params;

    const [updated] = await Tiendas.update(req.body, {
      where: { id }
    });

    if (updated === 0) {
      return res.status(404).json({ message: "Tienda no encontrada" });
    }

    return res.status(200).json({ message: "Tienda actualizada correctamente" });
  } catch (error) {
    console.log(error);
    res.status(400).json({ message: "Error al actualizar la tienda" });
  }
};

/* =========================
   ELIMINAR TIENDA
========================= */
export const deleteTiendas = async (req, res) => {
  try {
    const { id } = req.params;

    const deleted = await Tiendas.destroy({
      where: { id }
    });

    if (deleted === 0) {
      return res.status(404).json({ message: "Tienda no encontrada" });
    }

    return res.status(200).json({ message: "Tienda eliminada correctamente" });
  } catch (error) {
    console.log(error);
    res.status(400).json({ message: "Error al eliminar la tienda" });
  }
};
