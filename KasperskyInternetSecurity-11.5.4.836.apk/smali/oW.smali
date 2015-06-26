.class public final LoW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;


# direct methods
.method public constructor <init>(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, LoW;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, LoW;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-static {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V

    .line 116
    iget-object v0, p0, LoW;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    iget-object v1, p0, LoW;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-virtual {v1}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->c()Lat;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(Lcom/kms/ipm/gui/ShowIpmMessageActivity;Lat;)Lat;

    .line 117
    iget-object v0, p0, LoW;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-static {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->b(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)Lat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, LoW;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-static {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->c(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, LoW;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-virtual {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->finish()V

    goto :goto_0
.end method
