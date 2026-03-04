## OVERVIEW
Menu.dpr launches the commercial ERP by showing the splash, instantiating dozens of data modules and forms, and wiring the main menu with the FireDAC and AI-enabled helpers described in README.txt so business users can access sales, purchasing, stock, and compliance tools from one VCL surface.

## PROJECT VARIANTS
- Menu.dproj — the main VCL application (~944 files) that hosts the ERP UI, data modules (DM* units), and the README-described Firebird+OpenAI query tool.

## NAMING CONVENTIONS
- Type prefix: `TDatos` (observed in data module declarations such as TDatosVentas and TDatosRemitos) — shorthand for ``TDataModule`` descendants that encapsulate datasets/logic for each area.
- Type prefix: `Tfrm` (legacy form classes in the codebase, though not present in the snippets read) — signals form units wired through UMenu.

## ARCHITECTURE
- Top level: `Menu.dpr` (entry point) + `UMenu.pas` (main menu form) orchestrate the application start, presentation, and navigation.
- Business layers: `GestionComercial\DM*.pas` (e.g., DMVenta, DMCompra, DMRemitos) serve as data modules that centralize FireDAC datasets, connection handling, and business logic per domain.
- Compliance/tooling: `GestionComercial\\FEAFIP V4` contains AFIP electronic invoicing helpers referenced indirectly by the ERP and the README-described feature that issues Firebird queries.
- Supporting resources live in `GestionComercial\cotlinker`, `GestionComercial\mllib`, and the `ServidorDataSnapGestion_2` folder (unused server builds) for specialized exports, drivers, and frozen data integrations.

## CODING STYLE
- Indentation: 2 spaces (observed at the start of UMenu.pas/DMVenta.pas).
- Braces (begin/end): next-line style, with `begin` and `end;` on their own lines, matching classic Delphi formatting.
- Other: uses clauses are grouped by `interface` vs `implementation`, and inline `var` declarations inside methods are scarce; fields live near the top of the method/unit.

## COMPILER DIRECTIVES
- None were discovered because READ constraints limited thorough scanning; default directives such as `{$R *.dfm}` are implied in each form but were not captured in the snippets.

## RULES FOR AI AGENTS
- Reuse the existing FireDAC connection modules (e.g., DMMian_FD and DMVenta pools) and never attempt to hardcode credentials; follow README guidelines about encrypted Firebird passwords.
- Treat natural-language-generated SQL as read-only unless the requester includes explicit authorization; always validate and log AI prompts before turning them into FireDAC queries.
- Avoid touching legacy/external folders (e.g., `GestionComercial\cotlinker` or `FEAFIP V4` sample directories) unless the feature explicitly updates those integrations.

## HOW TO WORK IN THIS CODEBASE
- **Adding a new feature**: Create the UI unit (form/frame) inside `GestionComercial` and pair it with a data module if it needs data access. Register the form/action in `UMenu.pas` so the menu commands instantiate the new form and hook into existing datasets. Reuse or extend DM* modules (e.g., DMVenta) to keep database logic centralized. Ensure FireDAC datasets reuse the shared connection and obey security checks before running queries.
- **Common tasks**: Follow the menu-driven command pattern—UMenu actions instantiate forms, data modules provide datasets, and business logic lives in DMs. Use FireDAC components, parameterized queries, and existing helper methods for navigation.
- **Key files to understand first**: `Menu.dpr` (startup wiring); `UMenu.pas` (menu orchestration + action dispatch); `GestionComercial\DMVenta.pas` (sales data and FireDAC setup); `GestionComercial\DMCompra.pas` (purchasing workflows); `GestionComercial\README.txt` (Firebird/OpenAI security and usage guidance).
- **Patterns to follow**: Action-driven navigation (menu → action → form); centralization of business logic inside `TDataModule` descendants; reuse of FireDAC connections/datasets rather than scattering SQL throughout forms.
- **Things to avoid**: Introducing inline SQL without parameterization, touching legacy sample folders (FEAFIP, cotlinker) without direction, carving new logic outside DM* modules (which would fragment the shared business/data model).

## UNCERTAINTIES
- **Why**: Limited one-shot reads prevented exhaustive scanning of large units and there is still a lot of code outside the sections read.
- **Files to investigate further**:
  - `GestionComercial\UMenu.pas` – needs a full read to map every menu command and action wiring.
  - `GestionComercial\DMVenta.pas` – entire implementation (beyond first few hundred lines) contains the core sales logic and FireDAC configuration.
  - `GestionComercial\DMRemitos.pas` – likely handles shipments; need full understanding of datasets and datasets’ events.
- **Classes/types to understand better**:
  - `TDMVenta` – critical for sales workflows but only partially observed.
  - `TDMRemito` – similar but not fully examined due to read limitations.
  - `TDatosClientes` – captured only from DMClientes but deeper validation/security rules probably exist.
- **Questions for the codebase maintainers**:
  - Are there any additional shared helper modules (beyond DM* units) that should be extended when adding features?
  - Is there a recommended way to capture and replay AI-generated SQL prompts for auditing?
