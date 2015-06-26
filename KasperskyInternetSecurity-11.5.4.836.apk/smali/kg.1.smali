.class public final Lkg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 665
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 667
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    .line 668
    return-object v1
.end method
