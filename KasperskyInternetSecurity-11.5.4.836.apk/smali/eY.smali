.class public final LeY;
.super LeT;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, LeT;-><init>(Landroid/widget/EditText;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V

    .line 321
    invoke-direct {p0}, LeY;->a()V

    .line 322
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, LeY;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string v1, "^[\\w\\.0-9_%+-]+@([\\w0-9_%+-]+\\.)+[\\w]{2,6}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->CORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    :goto_0
    invoke-virtual {p0, v0}, LeY;->a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;)V

    .line 335
    return-void

    .line 332
    :cond_0
    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->INCORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    goto :goto_0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, LeY;->a()V

    .line 327
    return-void
.end method
