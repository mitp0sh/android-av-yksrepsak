.class Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;B)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)V

    return-void
.end method

.method private static a(I)Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;
    .locals 1

    .prologue
    .line 396
    packed-switch p0, :pswitch_data_0

    .line 400
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->ScanExecutablesOnly:Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    :goto_0
    return-object v0

    .line 398
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->ScanAllFiles:Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 378
    if-ltz p2, :cond_0

    .line 380
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;I)I

    .line 384
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lsf;->a(ILjava/lang/Object;)Lss;

    .line 386
    invoke-virtual {v0}, Lsf;->g_()V

    .line 388
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel;ILjava/lang/String;)V

    .line 389
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 390
    invoke-static {p2}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusScanDetailPanel$ScannedObjectTypesDialogListener;->a(I)Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;)V

    goto :goto_0
.end method
