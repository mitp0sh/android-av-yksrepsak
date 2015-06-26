.class public final Lns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSCommonUserActionActivity;


# direct methods
.method private constructor <init>(Lcom/kms/gui/KMSCommonUserActionActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lns;->a:Lcom/kms/gui/KMSCommonUserActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/gui/KMSCommonUserActionActivity;B)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lns;-><init>(Lcom/kms/gui/KMSCommonUserActionActivity;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/kms/gui/KMSCommonUserActionActivity;->f()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {}, Lcom/kms/gui/KMSCommonUserActionActivity;->f()[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 127
    iget-object v1, p0, Lns;->a:Lcom/kms/gui/KMSCommonUserActionActivity;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->a(I)V

    .line 131
    :cond_0
    return-void

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
