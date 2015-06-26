.class public final Ltk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    packed-switch p0, :pswitch_data_0

    .line 20
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 10
    :pswitch_1
    const-string v0, "LICTYPE_BETA"

    goto :goto_0

    .line 12
    :pswitch_2
    const-string v0, "LicenseTypes.LICTYPE_COMMER_SUBSCR"

    goto :goto_0

    .line 14
    :pswitch_3
    const-string v0, "LICTYPE_COMMER_SUBSCR_LIMIT"

    goto :goto_0

    .line 16
    :pswitch_4
    const-string v0, "LICTYPE_COMMERCIAL"

    goto :goto_0

    .line 18
    :pswitch_5
    const-string v0, "LICTYPE_TRIAL"

    goto :goto_0

    .line 8
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
