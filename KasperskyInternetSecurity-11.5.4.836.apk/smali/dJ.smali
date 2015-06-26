.class public final LdJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static f:Z

.field private static h:Z


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:[B

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, LdJ;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, LdJ;->a:Landroid/hardware/Camera;

    .line 42
    iput-boolean v0, p0, LdJ;->b:Z

    .line 43
    iput-boolean v0, p0, LdJ;->c:Z

    .line 44
    iput v0, p0, LdJ;->d:I

    .line 46
    iput-object v1, p0, LdJ;->e:[B

    .line 48
    iput-boolean v0, p0, LdJ;->g:Z

    return-void
.end method

.method public static a(Landroid/hardware/Camera;Landroid/hardware/Camera$Size;)I
    .locals 6

    .prologue
    .line 173
    const/16 v1, 0x64

    .line 175
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v2

    .line 177
    const/4 v0, 0x3

    .line 178
    const/16 v3, 0x100

    if-eq v2, v3, :cond_0

    .line 179
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 180
    invoke-static {v2, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 181
    iget v0, v0, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 183
    :cond_0
    const v2, 0x12c000

    mul-int/2addr v2, v0

    int-to-double v2, v2

    .line 184
    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    iget v5, p1, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v4, v5

    mul-int/2addr v0, v4

    int-to-double v4, v0

    .line 185
    cmpl-double v0, v4, v2

    if-lez v0, :cond_2

    .line 186
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    div-double v2, v4, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    .line 187
    if-gtz v0, :cond_1

    .line 188
    const/16 v0, 0x32

    .line 193
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 5

    .prologue
    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 437
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 438
    new-instance v3, LdU;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, LdU;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [LdU;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LdU;

    invoke-static {v0}, LdU;->a([LdU;)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageManager;)V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    const-string v0, "android.hardware.camera.front"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 53
    sput-boolean v0, LdJ;->h:Z

    if-eqz v0, :cond_0

    .line 54
    sget-boolean v3, LdJ;->h:Z

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    and-int/2addr v0, v3

    sput-boolean v0, LdJ;->h:Z

    .line 56
    :cond_0
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v3

    .line 57
    invoke-virtual {v3, v4}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 58
    if-eqz v0, :cond_2

    sget-boolean v0, LdJ;->h:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lse;->a(ILjava/lang/Object;)Lss;

    .line 59
    invoke-virtual {v3}, Lse;->g_()V

    .line 60
    return-void

    :cond_1
    move v0, v2

    .line 54
    goto :goto_0

    :cond_2
    move v1, v2

    .line 58
    goto :goto_1
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x1

    sput-boolean v0, LdJ;->f:Z

    .line 427
    return-void
.end method

.method public static a([BZLandroid/hardware/Camera$Parameters;)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 202
    if-nez p0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-object v5

    .line 211
    :cond_1
    if-eqz p1, :cond_3

    .line 213
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    .line 217
    :goto_1
    const/16 v0, 0x11

    if-eq v2, v0, :cond_2

    const/16 v0, 0x14

    if-eq v2, v0, :cond_2

    const/16 v0, 0x10

    if-ne v2, v0, :cond_5

    .line 220
    :cond_2
    if-eqz p1, :cond_4

    .line 221
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    .line 222
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    .line 228
    :goto_2
    new-instance v0, Landroid/graphics/YuvImage;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 230
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 233
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 234
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/16 v4, 0x64

    :try_start_1
    invoke-virtual {v0, v1, v4, v3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 237
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 238
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 241
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    move-object v5, v0

    .line 247
    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v2

    goto :goto_1

    .line 224
    :cond_4
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    .line 225
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    goto :goto_2

    .line 241
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 246
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v5

    .line 245
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 247
    :cond_5
    const/16 v0, 0x100

    if-ne v0, v2, :cond_7

    .line 249
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 252
    :try_start_4
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 253
    :try_start_5
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 254
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 255
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v5

    .line 260
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 263
    :catch_1
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 256
    :catch_2
    move-exception v0

    move-object v1, v5

    .line 257
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 260
    if-eqz v1, :cond_0

    .line 262
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 263
    :catch_3
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 260
    :catchall_1
    move-exception v0

    move-object v1, v5

    :goto_6
    if-eqz v1, :cond_6

    .line 262
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 265
    :cond_6
    :goto_7
    throw v0

    .line 263
    :catch_4
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 269
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Don\'t support picture format - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 256
    :catch_5
    move-exception v0

    goto :goto_5

    .line 246
    :catch_6
    move-exception v1

    goto :goto_4
.end method

.method private b([BZLandroid/hardware/Camera$Parameters;)V
    .locals 1

    .prologue
    .line 197
    invoke-static {p1, p2, p3}, LdJ;->a([BZLandroid/hardware/Camera$Parameters;)[B

    move-result-object v0

    iput-object v0, p0, LdJ;->e:[B

    .line 198
    return-void
.end method

.method public static d()Landroid/hardware/Camera;
    .locals 2

    .prologue
    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 412
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 413
    invoke-static {}, LdK;->a()Landroid/hardware/Camera;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    .line 416
    :cond_0
    invoke-static {}, LdL;->a()Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 423
    sget-boolean v0, LdJ;->f:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, LdJ;->d()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    .line 92
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 95
    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    invoke-static {}, Lcom/kms/kmsshared/Utils;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, LdJ;->g:Z

    .line 96
    iget-boolean v0, p0, LdJ;->g:Z

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_3

    .line 104
    const-string v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 109
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 110
    invoke-static {v1}, LdJ;->a(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 111
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 112
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 113
    iget-object v1, p0, LdJ;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-static {v1, v2}, LdJ;->a(Landroid/hardware/Camera;Landroid/hardware/Camera$Size;)I

    move-result v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 124
    iget-object v1, p0, LdJ;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 125
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 129
    :goto_2
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 95
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 127
    :cond_5
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 144
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 145
    iput-object v1, p0, LdJ;->a:Landroid/hardware/Camera;

    .line 147
    :cond_0
    return-void
.end method

.method public final declared-synchronized c()[B
    .locals 3

    .prologue
    .line 150
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, LdJ;->e:[B

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, LdJ;->b:Z

    .line 153
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, LdJ;->b:Z

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, LdJ;->c:Z

    .line 157
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 158
    iget-boolean v0, p0, LdJ;->g:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 163
    :cond_0
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 164
    iget-object v0, p0, LdJ;->e:[B

    if-nez v0, :cond_1

    .line 165
    const/4 v0, 0x1

    invoke-static {v0}, LdJ;->a(Z)V

    .line 167
    :cond_1
    iget-object v0, p0, LdJ;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 169
    :cond_2
    iget-object v0, p0, LdJ;->e:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 387
    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 393
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, LdJ;->b([BZLandroid/hardware/Camera$Parameters;)V

    .line 404
    :cond_0
    monitor-enter p0

    .line 405
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 406
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-boolean v0, p0, LdJ;->c:Z

    if-eqz v0, :cond_1

    .line 72
    iget v0, p0, LdJ;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LdJ;->d:I

    .line 73
    iget v0, p0, LdJ;->d:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 74
    iput-boolean v2, p0, LdJ;->c:Z

    .line 75
    iput v2, p0, LdJ;->d:I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-boolean v0, p0, LdJ;->b:Z

    if-eqz v0, :cond_0

    .line 78
    iput-boolean v2, p0, LdJ;->b:Z

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, LdJ;->b([BZLandroid/hardware/Camera$Parameters;)V

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
