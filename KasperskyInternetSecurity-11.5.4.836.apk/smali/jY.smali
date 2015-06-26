.class public final LjY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/KisShieldView;


# direct methods
.method public constructor <init>(Lcom/kms/KisShieldView;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, LjY;->a:Lcom/kms/KisShieldView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, LjY;->a:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->a(Lcom/kms/KisShieldView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, LjY;->a:Lcom/kms/KisShieldView;

    iget-object v1, p0, LjY;->a:Lcom/kms/KisShieldView;

    invoke-static {v1}, Lcom/kms/KisShieldView;->b(Lcom/kms/KisShieldView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kms/KisShieldView;->invalidate(Landroid/graphics/Rect;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, LjY;->a:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->c(Lcom/kms/KisShieldView;)V

    goto :goto_0
.end method
