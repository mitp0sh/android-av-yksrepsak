.class public final LoV;
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
    .line 88
    iput-object p1, p0, LoV;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, LoV;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-static {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V

    .line 93
    iget-object v0, p0, LoV;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-virtual {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->c()Lat;

    move-result-object v0

    .line 94
    :goto_0
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, LoV;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    iget-wide v2, v0, Lat;->a:J

    invoke-static {v1, v2, v3}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->a(Lcom/kms/ipm/gui/ShowIpmMessageActivity;J)V

    .line 96
    iget-object v0, p0, LoV;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-virtual {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->c()Lat;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, LoV;->a:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-virtual {v0}, Lcom/kms/ipm/gui/ShowIpmMessageActivity;->finish()V

    .line 100
    return-void
.end method
