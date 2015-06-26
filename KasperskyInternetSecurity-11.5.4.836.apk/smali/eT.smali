.class public abstract LeT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field protected final a:Landroid/widget/EditText;

.field private b:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;

.field private c:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->NOT_INITED:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    iput-object v0, p0, LeT;->c:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    .line 87
    iput-object p1, p0, LeT;->a:Landroid/widget/EditText;

    .line 88
    iput-object p2, p0, LeT;->b:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;

    .line 91
    iget-object v0, p0, LeT;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected final a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, LeT;->c:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    if-eq v0, p1, :cond_0

    .line 102
    iput-object p1, p0, LeT;->c:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    .line 103
    iget-object v0, p0, LeT;->b:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, LeT;->b:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;

    iget-object v1, p0, LeT;->a:Landroid/widget/EditText;

    iget-object v2, p0, LeT;->c:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    invoke-interface {v0, v1, v2}, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;->a(Landroid/view/View;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;)V

    .line 107
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, LeT;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
