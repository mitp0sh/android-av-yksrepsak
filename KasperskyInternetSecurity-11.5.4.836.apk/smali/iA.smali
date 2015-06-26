.class public final LiA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kavsdk/secureinput/widget/SafeEditText;


# direct methods
.method public constructor <init>(Lcom/kavsdk/secureinput/widget/SafeEditText;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, LiA;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, LiA;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-virtual {v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LiA;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-static {v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->b(Lcom/kavsdk/secureinput/widget/SafeEditText;)LiD;

    move-result-object v0

    invoke-virtual {v0}, LiD;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, LiA;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-virtual {v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a()V

    .line 156
    :cond_0
    iget-object v0, p0, LiA;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-static {v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->c(Lcom/kavsdk/secureinput/widget/SafeEditText;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, LiA;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-static {v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->c(Lcom/kavsdk/secureinput/widget/SafeEditText;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 159
    :cond_1
    return-void
.end method
