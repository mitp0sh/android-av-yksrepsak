.class public final Luy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/menu/KisMenuButton;


# direct methods
.method public constructor <init>(Lcom/kms/menu/KisMenuButton;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Luy;->a:Lcom/kms/menu/KisMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Luy;->a:Lcom/kms/menu/KisMenuButton;

    invoke-static {v0}, Lcom/kms/menu/KisMenuButton;->a(Lcom/kms/menu/KisMenuButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Luy;->a:Lcom/kms/menu/KisMenuButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/menu/KisMenuButton;->a(Z)V

    .line 86
    :cond_0
    iget-object v0, p0, Luy;->a:Lcom/kms/menu/KisMenuButton;

    invoke-virtual {v0}, Lcom/kms/menu/KisMenuButton;->a()V

    .line 87
    return-void
.end method
