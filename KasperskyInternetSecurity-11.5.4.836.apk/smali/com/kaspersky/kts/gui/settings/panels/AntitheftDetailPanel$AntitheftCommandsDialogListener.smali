.class Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private a:[Z

.field private synthetic b:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;[Z)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->a:[Z

    .line 276
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 291
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v2

    .line 294
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->a:[Z

    aget-boolean v3, v3, v0

    .line 295
    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    invoke-static {v4}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;)[Z

    move-result-object v4

    aget-boolean v4, v4, v0

    if-eq v4, v3, :cond_0

    .line 296
    invoke-interface {v2, v3}, Lde;->a(Z)V

    move v0, v1

    .line 300
    :cond_0
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->a:[Z

    aget-boolean v3, v3, v1

    .line 301
    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    invoke-static {v4}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;)[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    if-eq v4, v3, :cond_1

    .line 302
    invoke-interface {v2, v3}, Lde;->b(Z)V

    move v0, v1

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->a:[Z

    aget-boolean v3, v3, v5

    .line 307
    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    invoke-static {v4}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;)[Z

    move-result-object v4

    aget-boolean v4, v4, v5

    if-eq v4, v3, :cond_2

    .line 308
    invoke-interface {v2, v3}, Lde;->d(Z)V

    move v0, v1

    .line 312
    :cond_2
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->a:[Z

    aget-boolean v3, v3, v6

    .line 313
    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    invoke-static {v4}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;)[Z

    move-result-object v4

    aget-boolean v4, v4, v6

    if-eq v4, v3, :cond_4

    .line 314
    invoke-interface {v2, v3}, Lde;->c(Z)V

    .line 318
    :goto_0
    if-eqz v1, :cond_3

    .line 319
    invoke-interface {v2}, Lde;->m()V

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->a:[Z

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;[Z)[Z

    .line 323
    return-void

    :cond_4
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 280
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->a()V

    .line 282
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;ILjava/lang/String;)V

    .line 283
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$AntitheftCommandsDialogListener;->b:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->e(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method
