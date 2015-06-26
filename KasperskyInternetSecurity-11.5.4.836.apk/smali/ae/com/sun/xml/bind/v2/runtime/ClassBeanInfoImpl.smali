.class public final Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
.super Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
.source "ClassBeanInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/AttributeAccessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo",
        "<TBeanT;>;",
        "Lae/com/sun/xml/bind/v2/runtime/AttributeAccessor",
        "<TBeanT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_PROPERTIES:[Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private attributeProperties:[Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty",
            "<TBeanT;>;"
        }
    .end annotation
.end field

.field private ci:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

.field private final factoryMethod:Ljava/lang/reflect/Method;

.field private idProperty:Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/property/Property",
            "<-TBeanT;>;"
        }
    .end annotation
.end field

.field private final inheritedAttWildcard:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<-TBeanT;",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private loaderWithTypeSubst:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field public final properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lae/com/sun/xml/bind/v2/runtime/property/Property",
            "<TBeanT;>;"
        }
    .end annotation
.end field

.field private retainPropertyInfo:Z

.field public final superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl",
            "<-TBeanT;>;"
        }
    .end annotation
.end field

.field private final tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

.field private uriProperties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lae/com/sun/xml/bind/v2/runtime/property/Property",
            "<TBeanT;>;"
        }
    .end annotation
.end field

.field private final xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TBeanT;>;"
        }
    .end annotation
.end field

.field private final xmlLocatorField:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<-TBeanT;",
            "Lorg/xml/sax/Locator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    new-array v0, v0, [Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->EMPTY_PROPERTIES:[Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    .line 445
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;)V
    .locals 19
    .param p1, "owner"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "ci"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    .prologue
    .line 141
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getClazz()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->isElement()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;Ljavax/xml/namespace/QName;ZZZ)V

    .line 125
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->retainPropertyInfo:Z

    .line 143
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->ci:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    .line 144
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getAttributeWildcard()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->inheritedAttWildcard:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 145
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 146
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getFactoryMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->factoryMethod:Ljava/lang/reflect/Method;

    .line 147
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->retainPropertyInfo:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->retainPropertyInfo:Z

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v10

    .line 153
    .local v10, "classMod":I
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v10    # "classMod":I
    :cond_1
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getBaseClass()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    move-result-object v2

    if-nez v2, :cond_3

    .line 167
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    .line 171
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->xmlLocatorField:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    if-eqz v2, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->xmlLocatorField:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-object/from16 v0, p0

    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->xmlLocatorField:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 177
    :goto_1
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getProperties()Ljava/util/List;

    move-result-object v18

    .line 178
    .local v18, "ps":Ljava/util/Collection;, "Ljava/util/Collection<+Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lae/com/sun/xml/bind/v2/runtime/property/Property;

    move-object/from16 v0, p0

    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .line 179
    const/4 v14, 0x0

    .line 180
    .local v14, "idx":I
    const/4 v12, 0x1

    .line 181
    .local v12, "elementOnly":Z
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    .line 182
    .local v16, "info":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyFactory;->create(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)Lae/com/sun/xml/bind/v2/runtime/property/Property;

    move-result-object v17

    .line 183
    .local v17, "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    invoke-interface/range {v16 .. v16}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->id()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v2

    sget-object v3, Lae/com/sun/xml/bind/v2/model/core/ID;->ID:Lae/com/sun/xml/bind/v2/model/core/ID;

    if-ne v2, v3, :cond_2

    .line 184
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->idProperty:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .line 185
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "idx":I
    .local v15, "idx":I
    aput-object v17, v2, v14

    .line 186
    invoke-interface/range {v16 .. v16}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->elementOnlyContent()Z

    move-result v2

    and-int/2addr v12, v2

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->checkOverrideProperties(Lae/com/sun/xml/bind/v2/runtime/property/Property;)V

    move v14, v15

    .line 188
    .end local v15    # "idx":I
    .restart local v14    # "idx":I
    goto :goto_2

    .line 157
    .end local v12    # "elementOnly":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "idx":I
    .end local v16    # "info":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    .end local v17    # "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .end local v18    # "ps":Ljava/util/Collection;, "Ljava/util/Collection<+Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;>;"
    .restart local v10    # "classMod":I
    :catch_0
    move-exception v11

    .line 159
    .local v11, "e":Ljava/lang/SecurityException;
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to make the method of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " accessible"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    throw v11

    .line 169
    .end local v10    # "classMod":I
    .end local v11    # "e":Ljava/lang/SecurityException;
    :cond_3
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getBaseClass()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;)Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    goto/16 :goto_0

    .line 174
    :cond_4
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getLocatorField()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->xmlLocatorField:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    goto/16 :goto_1

    .line 192
    .restart local v12    # "elementOnly":Z
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "idx":I
    .restart local v18    # "ps":Ljava/util/Collection;, "Ljava/util/Collection<+Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;>;"
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->hasElementOnlyContentModel(Z)V

    .line 195
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->isElement()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 196
    move-object/from16 v0, p1

    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 200
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->setLifecycleFlags()V

    .line 201
    return-void

    .line 198
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    goto :goto_3
.end method

.method private checkOverrideProperties(Lae/com/sun/xml/bind/v2/runtime/property/Property;)V
    .locals 8
    .param p1, "p"    # Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .prologue
    .line 204
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    move-object v1, p0

    .line 205
    .local v1, "bi":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    :cond_0
    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    if-eqz v1, :cond_1

    .line 206
    iget-object v4, v1, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .line 207
    .local v4, "props":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    if-nez v4, :cond_2

    .line 216
    .end local v4    # "props":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    :cond_1
    return-void

    .line 208
    .restart local v4    # "props":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    :cond_2
    move-object v0, v4

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 209
    .local v6, "superProperty":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    if-eqz v6, :cond_0

    .line 210
    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->getFieldName()Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "spName":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 212
    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->setHiddenByOverride(Z)V

    .line 208
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;",
            ")TBeanT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    const/4 v0, 0x0

    .line 284
    .local v0, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 285
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->jaxbType:Ljava/lang/Class;

    invoke-static {v3}, Lae/com/sun/xml/bind/v2/ClassFactory;->create0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    :goto_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->xmlLocatorField:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    if-eqz v3, :cond_0

    .line 298
    :try_start_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->xmlLocatorField:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    new-instance v4, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getLocator()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/helpers/LocatorImpl;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {v3, v0, v4}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    :goto_1
    return-object v0

    .line 287
    :cond_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-static {v3}, Lae/com/sun/xml/bind/v2/ClassFactory;->create(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v2

    .line 288
    .local v2, "o":Ljava/lang/Object;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    move-object v0, v2

    goto :goto_0

    .line 291
    :cond_2
    new-instance v3, Ljava/lang/InstantiationException;

    const-string v4, "The factory method didn\'t return a correct object"

    invoke-direct {v3, v4}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    .end local v2    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p1, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getElementLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getElementNamespaceURI(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;
    .locals 3
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v1, 0x0

    .line 319
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->idProperty:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    if-eqz v2, :cond_0

    .line 321
    :try_start_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->idProperty:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->getIdValue(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 326
    :cond_0
    :goto_0
    return-object v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p2, v1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 2
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "typeSubstitutionCapable"    # Z

    .prologue
    .line 419
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    if-nez v1, :cond_0

    .line 422
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;)V

    .line 423
    .local v0, "sl":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 424
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->ci:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->hasSubClasses()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;

    invoke-direct {v1, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->loaderWithTypeSubst:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 431
    :goto_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->ci:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getAttributeWildcard()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->init(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .line 433
    .end local v0    # "sl":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;
    :cond_0
    if-eqz p2, :cond_2

    .line 434
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->loaderWithTypeSubst:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 436
    :goto_1
    return-object v1

    .line 428
    .restart local v0    # "sl":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->loaderWithTypeSubst:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    goto :goto_0

    .line 436
    .end local v0    # "sl":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;
    :cond_2
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    goto :goto_1
.end method

.method public getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TBeanT;>;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    return-object v0
.end method

.method protected link(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 6
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 220
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->uriProperties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    if-eqz v5, :cond_0

    .line 263
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->link(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    .line 225
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    if-eqz v5, :cond_1

    .line 226
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    invoke-virtual {v5, p1}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->link(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    .line 228
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 231
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    if-eqz v5, :cond_3

    .line 232
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->idProperty:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    if-nez v5, :cond_2

    .line 233
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    iget-object v5, v5, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->idProperty:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->idProperty:Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .line 235
    :cond_2
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->hasElementOnlyContentModel()Z

    move-result v5

    if-nez v5, :cond_3

    .line 236
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->hasElementOnlyContentModel(Z)V

    .line 240
    :cond_3
    new-instance v0, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v0}, Lcom/sun/istack/FinalArrayList;-><init>()V

    .line 241
    .local v0, "attProps":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;>;"
    new-instance v4, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v4}, Lcom/sun/istack/FinalArrayList;-><init>()V

    .line 242
    .local v4, "uriProps":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/runtime/property/Property;>;"
    move-object v1, p0

    .local v1, "bi":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    :goto_1
    if-eqz v1, :cond_7

    .line 243
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v5, v1, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 244
    iget-object v5, v1, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    aget-object v3, v5, v2

    .line 245
    .local v3, "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    instance-of v5, v3, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    if-eqz v5, :cond_4

    move-object v5, v3

    .line 246
    check-cast v5, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_4
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->hasSerializeURIAction()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 248
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 242
    .end local v3    # "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    :cond_6
    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    goto :goto_1

    .line 251
    .end local v2    # "i":I
    :cond_7
    iget-boolean v5, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->c14nSupport:Z

    if-eqz v5, :cond_8

    .line 252
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 254
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 255
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->EMPTY_PROPERTIES:[Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->attributeProperties:[Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    .line 259
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 260
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->EMPTY_PROPERTIES:[Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->uriProperties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    goto :goto_0

    .line 257
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->attributeProperties:[Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    goto :goto_3

    .line 262
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lae/com/sun/xml/bind/v2/runtime/property/Property;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lae/com/sun/xml/bind/v2/runtime/property/Property;

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->uriProperties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    goto/16 :goto_0
.end method

.method public reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z
    .locals 6
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    :try_start_0
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    if-eqz v5, :cond_0

    .line 308
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    invoke-virtual {v5, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z

    .line 309
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 310
    .local v4, "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;, "Lae/com/sun/xml/bind/v2/runtime/property/Property<TBeanT;>;"
    invoke-interface {v4, p1}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->reset(Ljava/lang/Object;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .end local v4    # "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;, "Lae/com/sun/xml/bind/v2/runtime/property/Property<TBeanT;>;"
    :cond_1
    const/4 v5, 0x1

    .line 314
    .end local v0    # "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v5

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p2, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 314
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 11
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v10, 0x0

    .line 368
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->attributeProperties:[Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 370
    .local v5, "p":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    :try_start_0
    iget-boolean v7, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->retainPropertyInfo:Z

    if-eqz v7, :cond_1

    .line 371
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getCurrentProperty()Lae/com/sun/xml/bind/v2/runtime/property/Property;

    move-result-object v6

    .line 372
    .local v6, "parentProperty":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    iget-object v7, p2, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->currentProperty:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 373
    invoke-virtual {v5, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 374
    iget-object v7, p2, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->currentProperty:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 378
    .end local v6    # "parentProperty":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    :goto_1
    iget-object v7, v5, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->attName:Lae/com/sun/xml/bind/v2/runtime/Name;

    const-string v8, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v9, "nil"

    invoke-virtual {v7, v8, v9}, Lae/com/sun/xml/bind/v2/runtime/Name;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 379
    const/4 v7, 0x1

    iput-boolean v7, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->isNilIncluded:Z

    .line 368
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {v5, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p2, v10, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 386
    .end local v1    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    .end local v5    # "p":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    :cond_2
    :try_start_1
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->inheritedAttWildcard:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    if-eqz v7, :cond_3

    .line 387
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->inheritedAttWildcard:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v7, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 388
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    const/4 v7, 0x0

    invoke-virtual {p2, v4, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attWildcardAsAttributes(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    :cond_3
    :goto_3
    return-void

    .line 390
    :catch_1
    move-exception v1

    .line 391
    .restart local v1    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p2, v10, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 8
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v7, 0x0

    .line 350
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    if-eqz v5, :cond_0

    .line 351
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    invoke-virtual {v5, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 354
    :cond_0
    :try_start_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 355
    .local v4, "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;, "Lae/com/sun/xml/bind/v2/runtime/property/Property<TBeanT;>;"
    iget-boolean v5, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->retainPropertyInfo:Z

    if-eqz v5, :cond_1

    .line 356
    iget-object v5, p2, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->currentProperty:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 358
    :cond_1
    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->isHiddenByOverride()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 359
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v4, p1, p2, v5}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;, "Lae/com/sun/xml/bind/v2/runtime/property/Property<TBeanT;>;"
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p2, v7, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    .end local v1    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    :cond_4
    return-void
.end method

.method public serializeRoot(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 8
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 330
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-nez v2, :cond_2

    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 333
    .local v0, "beanClass":Ljava/lang/Class;
    const-class v2, Lae/javax/xml/bind/annotation/XmlRootElement;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_MARSHAL_UNBOUND_CLASS:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "message":Ljava/lang/String;
    :goto_0
    new-instance v2, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    invoke-direct {v2, v5, v1, v6, v6}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    .line 347
    .end local v0    # "beanClass":Ljava/lang/Class;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 336
    .restart local v0    # "beanClass":Ljava/lang/Class;
    :cond_1
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_MARSHAL_NON_ELEMENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0

    .line 340
    .end local v0    # "beanClass":Ljava/lang/Class;
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v2, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p2, p1, v6}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsSoleContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 343
    iget-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->retainPropertyInfo:Z

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p2, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->currentProperty:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1
.end method

.method public serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 9
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v8, 0x0

    .line 397
    :try_start_0
    iget-boolean v7, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->retainPropertyInfo:Z

    if-eqz v7, :cond_3

    .line 398
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getCurrentProperty()Lae/com/sun/xml/bind/v2/runtime/property/Property;

    move-result-object v6

    .line 399
    .local v6, "parentProperty":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->uriProperties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 400
    .local v5, "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;, "Lae/com/sun/xml/bind/v2/runtime/property/Property<TBeanT;>;"
    iget-object v7, p2, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->currentProperty:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 401
    invoke-interface {v5, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    .end local v5    # "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;, "Lae/com/sun/xml/bind/v2/runtime/property/Property<TBeanT;>;"
    :cond_0
    iget-object v7, p2, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->currentProperty:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 409
    .end local v6    # "parentProperty":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    :cond_1
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->inheritedAttWildcard:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    if-eqz v7, :cond_2

    .line 410
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->inheritedAttWildcard:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v7, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 411
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    const/4 v7, 0x0

    invoke-virtual {p2, v4, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attWildcardAsURIs(Ljava/util/Map;Ljava/lang/String;)V

    .line 416
    .end local v0    # "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void

    .line 405
    :cond_3
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->uriProperties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .restart local v0    # "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 406
    .restart local v5    # "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;, "Lae/com/sun/xml/bind/v2/runtime/property/Property<TBeanT;>;"
    invoke-interface {v5, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 413
    .end local v0    # "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;, "Lae/com/sun/xml/bind/v2/runtime/property/Property<TBeanT;>;"
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p2, v8, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public wrapUp()V
    .locals 5

    .prologue
    .line 267
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .local v0, "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 268
    .local v3, "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->wrapUp()V

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v3    # "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->ci:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    .line 270
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->wrapUp()V

    .line 271
    return-void
.end method
