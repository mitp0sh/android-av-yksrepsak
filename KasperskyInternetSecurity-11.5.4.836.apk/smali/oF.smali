.class final LoF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:LoB;


# direct methods
.method constructor <init>(LoB;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, LoF;->a:LoB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 278
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/gui/dialog/DialogEventType;->NegativeButtonClicked:Lcom/kms/gui/dialog/DialogEventType;

    iget-object v2, p0, LoF;->a:LoB;

    invoke-static {v2}, LoB;->a(LoB;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LoF;->a:LoB;

    invoke-static {v3}, LoB;->c(LoB;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kms/gui/dialog/DialogEventType;->newEvent(Ljava/lang/String;Ljava/lang/Object;)LoJ;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 279
    return-void
.end method
