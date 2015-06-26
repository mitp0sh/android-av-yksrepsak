.class public final LjZ;
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
    .line 427
    iput-object p1, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->d(Lcom/kms/KisShieldView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    iget-object v1, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v1}, Lcom/kms/KisShieldView;->b(Lcom/kms/KisShieldView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kms/KisShieldView;->invalidate(Landroid/graphics/Rect;)V

    .line 460
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->e(Lcom/kms/KisShieldView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->f(Lcom/kms/KisShieldView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v1}, Lcom/kms/KisShieldView;->e(Lcom/kms/KisShieldView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->e(Lcom/kms/KisShieldView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->f(Lcom/kms/KisShieldView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 438
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    iget-object v1, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v1}, Lcom/kms/KisShieldView;->e(Lcom/kms/KisShieldView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/KisShieldView;->a(Lcom/kms/KisShieldView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 441
    :cond_1
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0, v2}, Lcom/kms/KisShieldView;->b(Lcom/kms/KisShieldView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 442
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0, v2}, Lcom/kms/KisShieldView;->a(Lcom/kms/KisShieldView;Landroid/os/Handler;)Landroid/os/Handler;

    .line 443
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0, v2}, Lcom/kms/KisShieldView;->a(Lcom/kms/KisShieldView;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 444
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0, v2}, Lcom/kms/KisShieldView;->a(Lcom/kms/KisShieldView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 445
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0, v4}, Lcom/kms/KisShieldView;->a(Lcom/kms/KisShieldView;I)I

    .line 447
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->g(Lcom/kms/KisShieldView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0, v2}, Lcom/kms/KisShieldView;->c(Lcom/kms/KisShieldView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 449
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0, v4}, Lcom/kms/KisShieldView;->a(Lcom/kms/KisShieldView;Z)Z

    .line 450
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0, v3}, Lcom/kms/KisShieldView;->a(Lcom/kms/KisShieldView;F)F

    .line 451
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0, v3}, Lcom/kms/KisShieldView;->b(Lcom/kms/KisShieldView;F)F

    .line 453
    :cond_2
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->h(Lcom/kms/KisShieldView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->h(Lcom/kms/KisShieldView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 455
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0, v2}, Lcom/kms/KisShieldView;->d(Lcom/kms/KisShieldView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 457
    :cond_3
    iget-object v0, p0, LjZ;->a:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->c(Lcom/kms/KisShieldView;)V

    goto/16 :goto_0
.end method
