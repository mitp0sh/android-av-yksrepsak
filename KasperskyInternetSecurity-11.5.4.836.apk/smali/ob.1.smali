.class public final Lob;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IJ)I
    .locals 2

    .prologue
    .line 26
    packed-switch p0, :pswitch_data_0

    .line 41
    :pswitch_0
    const v0, 0x7f070166

    :goto_0
    return v0

    .line 28
    :pswitch_1
    const v0, 0x7f070165

    goto :goto_0

    .line 31
    :pswitch_2
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 32
    const v0, 0x7f07013a

    goto :goto_0

    .line 34
    :cond_0
    const v0, 0x7f070164

    goto :goto_0

    .line 37
    :pswitch_3
    const v0, 0x7f070162

    goto :goto_0

    .line 39
    :pswitch_4
    const v0, 0x7f070163

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 50
    const/16 v0, 0x14

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070145

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p1, p2}, LsD;->a(J)J

    move-result-wide v0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070146

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
