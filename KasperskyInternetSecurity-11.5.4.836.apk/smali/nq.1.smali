.class final Lnq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lnp;


# direct methods
.method constructor <init>(Lnp;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lnq;->a:Lnp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 235
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lnq;->a:Lnp;

    iget-object v0, v0, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMSCommonContactsActivity;->c()Z

    move-result v0

    .line 246
    :goto_0
    return v0

    .line 243
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 244
    iget-object v1, p0, Lnq;->a:Lnp;

    iget-object v1, v1, Lnp;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->b(I)Z

    move-result v0

    goto :goto_0
.end method
