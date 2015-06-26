.class public final LeZ;
.super LeT;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, LeT;-><init>(Landroid/widget/EditText;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V

    .line 342
    invoke-direct {p0}, LeZ;->a()V

    .line 343
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, LeZ;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->INCORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    :goto_0
    invoke-virtual {p0, v0}, LeZ;->a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;)V

    .line 356
    return-void

    .line 353
    :cond_0
    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->CORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    goto :goto_0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, LeZ;->a()V

    .line 348
    return-void
.end method
